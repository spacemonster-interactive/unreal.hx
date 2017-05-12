package uhx.compiletime;
import haxe.macro.Context;
import haxe.macro.Expr;
import haxe.macro.Type;
import uhx.compiletime.types.*;
import uhx.meta.MetaDef;

using Lambda;
using uhx.compiletime.tools.MacroHelpers;
using haxe.macro.Tools;

class NeedsGlueBuild
{
  static var checkedVersion = false;
  public static function build():Array<Field>
  {
    #if bake_externs
    return null;
    #end
    // check version level
    if (!checkedVersion) {
      Globals.cur.checkBuildVersionLevel();
      checkedVersion = true;
    }
    var localClass = Context.getLocalClass(),
        cls = localClass.get(),
        thisType = TypeRef.fromBaseType(cls, cls.pos);

    var disableUObject = Context.defined('UHX_NO_UOBJECT');
    if (disableUObject) {
      var cur = cls;
      while (cur != null) {
        if (cur.name == 'UObject') {
          switch(localClass.toString()) {
          case 'unreal.UObject' | 'unreal.UClass':
            // don't exclude
          case _:
            cls.exclude();
          }
          return [];
        }

        if (cur.superClass != null) {
          cur = cur.superClass.t.get();
        } else {
          break;
        }
      }
    }

    if (Globals.cur.gluesTouched.exists(localClass.toString()))
      return null;

    Globals.cur.gluesTouched[localClass.toString()] = true;

    if (cls.meta.has(':ueGluePath')) {
      Globals.cur.gluesToGenerate = Globals.cur.gluesToGenerate.add(thisType.getClassPath());
    }
    if (cls.meta.has(':ueNoGlue')) {
      return null;
    }

    var superClass = cls.superClass == null ? null : cls.superClass.t.get();

    if (!cls.meta.has(':uextern')) {
      cls.meta.add(':uextension', [], cls.pos);
      if (Globals.cur.inScriptPass) {
        cls.meta.add(':uscript', [], cls.pos);
      } else {
        var hxPath = localClass.toString();
        var uname = MacroHelpers.getUName(cls);
        Globals.cur.staticUTypes[hxPath] = { hxPath:hxPath, uname: uname, type: CompiledClassType.CUClass };
      }
      // FIXME: allow any namespace by using @:native; add @:native handling
      if (cls.pack.length == 0)
        throw new Error('Unreal Glue Extension: Do not extend Unreal types on the global namespace. Use a package', cls.pos);
      // if we don't have the @:uextern meta, it means
      // we're subclassing an extern class

      // non-extern type that derives from UObject:
      // change uproperties to call getter/setters
      // warn if constructors are created
      var fields:Array<Field> = Context.getBuildFields();
      var ret = processType(cls, function(str) return superClass.findField(str,false), thisType, fields);
      if (ret != null && cls.isInterface) {
        for (field in ret) {
          switch(field.kind) {
          case FFun(fn):
            fn.expr = null;
          case _:
          }
        }
      }
      return ret;
    }

    return null;
  }

  public static function processType(type:BaseType, findSuperField:Null<String->ClassField>, thisType:TypeRef, fields:Array<Field>):Array<Field> {
    var hadErrors = false,
        toAdd:Array<Field> = [];
    var delayedglue = macro uhx.internal.DelayedGlue;
    if (Context.defined('display') || (Context.defined('cppia') && !Globals.cur.scriptModules.exists(type.module))) {
      // don't spend precious macro processing time if this is not a script module
      delayedglue = macro cast null;
    }

    var isDynamicUType = Globals.isDynamicUType(type),
        superClass = null,
        firstExternSuper = null;
    {
      var parent = (cast type : ClassType).superClass;
      if (parent != null) {
        superClass = parent.t.get();
        var cur = superClass;
        while(true) {
          if (cur.meta.has(':uextern')) {
            firstExternSuper = cur;
            break;
          }
          if (cur.superClass == null) {
            break;
          }
          cur = cur.superClass.t.get();
        }
      }
    }

    if (!isDynamicUType && superClass != null && Globals.isDynamicUType(superClass)) {
      Context.error(
        'A @:upropExpose class definition cannot have a Dynamic script superclass.' +
        'Consider adding @:upropExpose to the superclass, or taking it off from the current class definition', type.pos);
    }

    var changed = false;
    var superCalls = new Map(),
        uprops = [];
    var nativeCalls = new Map();
    if (Context.defined('cppia') && Globals.cur.inScriptPass) {
      Globals.cur.classesToAddMetaDef.push(thisType.getClassPath());
    }

    var methodPtrs = new Map();
    for (field in fields) {
      if (field.access != null && field.access.has(AOverride)) {
        field.meta.push({ name:':keep', pos:field.pos });
        // TODO: should we check for non-override fields as well? This would
        //       add some overhead for all override fields, which is something I'd like to avoid for now
        //       specially since super calling in other fields doesn't seem particularly useful
        switch (field.kind) {
        case FFun(fn) if (fn.expr != null):
          function map(e:Expr) {
            return switch (e.expr) {
            case ECall(macro super.$sfield, args):
              superCalls[sfield] = sfield;
              var args = [ for (arg in args) map(arg) ];
              changed = true;
              var ret = null;
              if (field.meta.hasMeta(':live') && !Globals.cur.inScriptPass && !Context.defined('cppia')) {
                // regardless if the super points to a haxe superclass or not,
                // we will need to be able to call it through a static function
                var fn = findSuperField(sfield);
                // get function arguments
                if (fn == null) {
                  Context.warning('Field calls super but no super field with name $sfield', e.pos);
                  hadErrors = true;
                } else {
                  switch(Context.follow(fn.type)) {
                  case TFun(fnargs,fnret):
                    var name = field.name + '__supercall_' + type.name;
                    var isVoid = fnret.match(TAbstract(_.get() => { name:'Void', pack:[] }, _));
                    var expr = { expr:ECall(macro @:pos(e.pos) $delayedglue.getSuperExpr, [macro $v{sfield}, macro $v{name}].concat([for (arg in fnargs) macro $i{arg.name}])), pos:e.pos };
                    toAdd.push({
                      name: name,
                      kind: FFun({
                        args: [ for (arg in fnargs) { name: arg.name, opt: arg.opt, type: arg.t.toComplexType() } ],
                        ret: fnret.toComplexType(),
                        expr: isVoid ? expr : macro return $expr,
                      }),
                      pos: e.pos
                    });
                    ret = { expr:ECall(macro @:pos(e.pos) this.$name, args), pos:e.pos };
                  case _:
                    Context.warning('Super cannot be called on non-method members', e.pos);
                    hadErrors = true;
                  }
                }
              }
              if (ret == null) {
                ret = { expr:ECall(macro @:pos(e.pos) $delayedglue.getSuperExpr, [macro $v{sfield}, macro $v{sfield}].concat(args)), pos:e.pos };
              }
              ret;
            case _:
              e.map(map);
            }
          }
          if (!Context.defined('cppia') || Globals.cur.scriptModules.exists(type.module)) {
            fn.expr = map(fn.expr);
          }
        case _:
        }
      }
      var isExposedProp = false,
          isDynamic = false,
          isStatic = field.access != null && field.access.has(AStatic);

      switch(field.kind) {
      case FVar(_) | FProp(_):
        var hasExpose = field.meta.hasMeta(":uexpose");
        isExposedProp = Globals.shouldExposePropertyExpr(field, isDynamicUType);
        isDynamic = !hasExpose && isDynamicUType;

        if (!isStatic && isDynamicUType && hasExpose) {
          // check if the parent is also dynamic
          if (superClass != null && Globals.isDynamicUType(superClass)) {
            Context.warning(
              'Unreal Glue Extension: uexpose properties can only exist in subclasses of non-dynamic script UClasses. ' +
              'Consider adding @:urpopExpose on the superclass, or taking the @:uexpose off from this property.',
              field.pos);
            hadErrors = true;
          }
        }
      case _:
      }

      var shouldAddGetterSetter = isExposedProp;
      if (!shouldAddGetterSetter && Context.defined('cppia') && field.meta.hasMeta(':uproperty')) {
        shouldAddGetterSetter = true;
      }
      if (shouldAddGetterSetter) {
        field.meta.push({ name:':keep', pos:field.pos });
        changed = true;
        switch (field.kind) {
          case FVar(t,e) | FProp('default','default',t,e) if (t != null):
            if (isDynamic) {
              var staticPropName = 'uhx__prop_${field.name}';
              var dummy = macro class {
                private static var $staticPropName:unreal.UProperty;
              };
              toAdd.push(dummy.fields[0]);
            }
            var fieldUName = field.meta.extractStringsFromMetadata(':uname')[0];
            if (fieldUName == null) {
              fieldUName = field.name;
            }
            uprops.push(field.name);
            var getter = 'get_' + field.name,
                setter = 'set_' + field.name;
            var dummy = macro class {
              private function $getter():$t {
                return $delayedglue.getGetterSetterExpr($v{field.name}, $v{isStatic}, false, $v{isDynamic}, $v{fieldUName});
              }
              private function $setter(value:$t):$t {
                $delayedglue.getGetterSetterExpr($v{field.name}, $v{isStatic}, true, $v{isDynamic}, $v{fieldUName});
                return value;
              }
            };
            if (isStatic) {
              for (field in dummy.fields) field.access.push(AStatic);
            }

            for (field in dummy.fields) toAdd.push(field);
            field.kind = FProp("get", "set", t, e);
          case FProp(_,_,_,_):
            Context.warning(
              'Unreal Glue Extension: uproperty properties with getters and setters are not supported by Unreal',
              field.pos);
            hadErrors = true;
          case FFun(_):
            Context.warning('Unreal Glue Extension: uproperty is not compatible with functions', field.pos);
            hadErrors = true;
          case _:
            Context.warning(
              'Unreal Glue Extension: uproperty properties must have a type',
              field.pos);
            hadErrors = true;
        }
      }

      // add the methodPtr accessor for any functions that are exposed/implemented in C++
      var shouldExposeFn = Globals.shouldExposeFunctionExpr(
          field,
          isDynamicUType,
          (firstExternSuper == null || isStatic ? false : firstExternSuper.findField(field.name, false) != null));
      if (!isStatic && shouldExposeFn) {
        field.meta.push({ name:':keep', pos:field.pos });
        switch (field.kind) {
        case FFun(_):
          var uname = field.name;
          var unameMeta = MacroHelpers.extractMeta(field.meta, ':uname');
          if (unameMeta != null) {
            uname = switch(unameMeta.params[0].expr) {
              case EConst(CIdent(s)): s;
              case EConst(CString(s)): s;
              default: field.name;
            };
          }

          var glueFnName = '_get_${field.name}_methodPtr';

          var dummy = macro class {
            private static function $glueFnName() : unreal.UIntPtr {
              return $delayedglue.getNativeCall($v{glueFnName}, true);
            }
          }
          methodPtrs[field.name] = field.name;
          toAdd.push(dummy.fields[0]);
        case _:
        }
      }

      for (meta in field.meta) {
        if (meta.name == ':ufunction' && meta.params != null) {
          var fn = switch (field.kind) {
          case FFun(f):
            f;
          case _:
            throw new Error('Unreal Glue Extension: @:ufunction meta on a non-function', field.pos);
          };
          for (param in meta.params) {
            if (UExtensionBuild.ufuncMetaNoImpl(param)) {
              var name = switch (param.expr) {
              case EConst(CIdent(i)):
                i;
              case _: throw 'assert';
              }

              if (fn.expr != null) {
                Context.warning('Unreal Glue Extension: $name ufunctions should not contain any implementation', field.pos);
                hadErrors = true;
              }
              var call:Expr = null;
              if (shouldExposeFn) {
                nativeCalls[field.name] = field.name;
                call = {
                  expr:ECall(
                    macro @:pos(field.pos) $delayedglue.getNativeCall,
                    [macro $v{field.name}, macro $v{isStatic}].concat([ for (arg in fn.args) macro $i{arg.name} ])),
                  pos: field.pos
                };
              } else {
                var staticFuncName = 'uhx__func_${field.name}';
                var dummy = macro class {
                  private static var $staticFuncName:unreal.UFunction;
                };

                var uname = field.name;
                var unameMeta = MacroHelpers.extractMeta(field.meta, ':uname');
                toAdd.push(dummy.fields[0]);
                var funcData = macro ($i{staticFuncName} != null ?
                    $i{staticFuncName} :
                    ($i{staticFuncName} = unreal.ReflectAPI.getUFunctionFromClass(StaticClass(), $v{uname})));
                var callArgs = [ for (arg in fn.args) macro $i{arg.name} ];
                call = {
                  expr:ECall(
                    macro @:pos(field.pos) unreal.ReflectAPI.callUFunction,
                    [macro this, funcData, macro $a{callArgs}]),
                  pos: field.pos
                };
              }
              switch (fn.ret) {
              case null | TPath({ pack:[], name:"Void" }):
                fn.expr = macro { $call; };
              case _:
                fn.expr = macro { return cast $call; };
              }
              changed = true;
              field.meta.push({ name:':final', params:[], pos:field.pos });
            }

            if (UExtensionBuild.ufuncMetaNeedsImpl(param)) {
              var name = switch (param.expr) {
              case EConst(CIdent(i)):
                i;
              case _: throw 'assert';
              }

              var found = false;
              for (impl in fields) {
                if (impl.name == field.name + '_Implementation') {
                  found = true;
                  impl.meta.push({ name:':uexpose', params:[], pos:impl.pos });
                  break;
                }
              }
              if (!found) {
                Context.warning('Unreal Glue Extension: $name ufunctions need a `_Implementation` function which is missing for function ${field.name}', field.pos);
                hadErrors = true;
              }
            }
          }
        }
      }
    }

    if (!type.meta.has(':ustruct')) {
      var uname = MacroHelpers.getUName(type);
      var thisClassName = thisType.getClassPath(true);
      var staticClassDef = macro class {
        public static function StaticClass() : unreal.UClass {
          return $delayedglue.getNativeCall('StaticClass', true);
        }

        @:ifFeature($v{thisClassName})
        @:glueCppBody($v{'return (int) sizeof(' + uname + ')'})
        public static function CPPSize() : Int {
          return $delayedglue.getNativeCall('CPPSize', true);
        }

        private static var _uhx_isHaxeType:Bool = true;
      };
      if (Context.defined('cppia')) {
        staticClassDef.fields[0].access.push(ADynamic);
      }

      for (field in staticClassDef.fields) {
        toAdd.push(field);
      }
      nativeCalls.set('StaticClass', 'StaticClass');
      nativeCalls.set('CPPSize', 'CPPSize');
      if (isDynamicUType && (superClass == null || !Globals.isDynamicUType(superClass))) {
        var ufuncCallDef = macro class {
          @:ifFeature($v{thisClassName})
          @:glueCppIncludes("IntPtr.h", "Engine.h")
          @:glueCppBody($v{'((UFunction*) fn)->SetNativeFunc((Native)&' + uname + '::' + Globals.UHX_CALL_FUNCTION + ')'})
          public static function setupFunction(fn:unreal.UIntPtr):Void {
            $delayedglue.getNativeCall('setupFunction', true, fn);
          }
        };

        for (field in ufuncCallDef.fields) {
          toAdd.push(field);
        }
        nativeCalls.set('setupFunction', 'setupFunction');
      }
    }

    if (uprops.length > 0)
      type.meta.add(':uproperties', [ for (prop in uprops) macro $v{prop} ], type.pos);
    type.meta.add(':usupercalls', [ for (call in superCalls) macro $v{call} ], type.pos);
    type.meta.add(':unativecalls', [ for (call in nativeCalls) macro $v{call} ], type.pos);
    type.meta.add(':umethodptrs', [ for(call in methodPtrs) macro $v{call} ], type.pos);

    // mark to add the haxe-side glue helper
    if (!type.meta.has(':ustruct')) {
      Globals.cur.uextensions = Globals.cur.uextensions.add(thisType.getClassPath());
    } else {
      // Haxe-defined USTRUCTs are handled specially in DelayedGlue
    }

    // add the glueRef definition if needed
    for (field in toAdd) {
      fields.push(field);
    }

    var created = false;
    if (Context.defined('cppia') || Context.defined('WITH_CPPIA')) {
      for (field in fields) {
        if (field.meta.hasMeta(':live')) {
          switch(field.kind) {
          case FFun(fn) if (fn.params == null || fn.params.length == 0):
            if (!created) {
              created = true;
              Globals.liveReloadFuncs[thisType.getClassPath()] = new Map();
            }
            var name = thisType.getClassPath() + '::' + field.name;
            var isStatic = field.access != null ? field.access.has(AStatic) : false;
            var retfn:Function = {
              args: isStatic ? fn.args : [{ name:'_self', type: TPath({ pack:[], name:type.name }) }].concat(fn.args),
              ret: fn.ret,
              expr: fn.expr
            };
            var expr = { expr:EFunction(null, retfn), pos:field.pos};
            fn.expr = macro uhx.internal.LiveReload.build(${expr}, $v{thisType.getClassPath()}, $v{field.name}, $v{isStatic});
            changed = true;
          case _:
          }
        }
      }
    }

    if (hadErrors)
      Context.error('Unreal Glue Extension: Build failed', type.pos);
    if (toAdd.length > 0 || changed)
      return fields;
    return null;
  }
}

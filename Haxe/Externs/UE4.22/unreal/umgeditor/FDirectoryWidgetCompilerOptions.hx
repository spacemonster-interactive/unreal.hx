/**
 * 
 * WARNING! This file was autogenerated by: 
 *  _   _ _   _ __   __ 
 * | | | | | | |\ \ / / 
 * | | | | |_| | \ V /  
 * | | | |  _  | /   \  
 * | |_| | | | |/ /^\ \ 
 *  \___/\_| |_/\/   \/ 
 * 
 * This file was autogenerated by UnrealHxGenerator using UHT definitions.
 * It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
 * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.umgeditor;

@:umodule("UMGEditor")
@:glueCppIncludes("Public/UMGEditorProjectSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FDirectoryWidgetCompilerOptions {
  
  /**
    The directory specific compiler options for these widgets.
  **/
  @:uproperty public var Options : unreal.umgeditor.FWidgetCompilerOptions;
  
  /**
    The directory to limit the rules effects to.
  **/
  @:uproperty public var Directory : unreal.FDirectoryPath;
  
}

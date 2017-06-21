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
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;

@:glueCppIncludes("Materials/MaterialInstanceDynamic.h")
@:uextern @:uclass extern class UMaterialInstanceDynamic extends unreal.UMaterialInstance {
  
  /**
    Set a MID scalar (float) parameter value
  **/
  @:ufunction @:final public function SetScalarParameterValue(ParameterName : unreal.FName, Value : unreal.Float32) : Void;
  
  /**
    Get the current scalar (float) parameter value from an MID
  **/
  @:ufunction @:final public function K2_GetScalarParameterValue(ParameterName : unreal.FName) : unreal.Float32;
  
  /**
    Set an MID texture parameter value
  **/
  @:ufunction @:final public function SetTextureParameterValue(ParameterName : unreal.FName, Value : unreal.UTexture) : Void;
  
  /**
    Get the current MID texture parameter value
  **/
  @:ufunction @:final public function K2_GetTextureParameterValue(ParameterName : unreal.FName) : unreal.UTexture;
  
  /**
    Set an MID vector parameter value
  **/
  @:ufunction @:final public function SetVectorParameterValue(ParameterName : unreal.FName, Value : unreal.FLinearColor) : Void;
  
  /**
    Get the current MID vector parameter value
  **/
  @:ufunction @:final public function K2_GetVectorParameterValue(ParameterName : unreal.FName) : unreal.FLinearColor;
  
  /**
    Interpolates the scalar and vector parameters of this material instance based on two other material instances, and an alpha blending factor
    The output is the object itself (this).
    Supports the case SourceA==this || SourceB==this
    Both material have to be from the same base material
    @param SourceA value that is used for Alpha=0, silently ignores the case if 0
    @param SourceB value that is used for Alpha=1, silently ignores the case if 0
    @param Alpha usually in the range 0..1, values outside the range extrapolate
  **/
  @:ufunction @:final public function K2_InterpolateMaterialInstanceParams(SourceA : unreal.UMaterialInstance, SourceB : unreal.UMaterialInstance, Alpha : unreal.Float32) : Void;
  
  /**
    Copies over parameters given a material interface (copy each instance following the hierarchy)
    Very slow implementation, avoid using at runtime. Hopefully we can replace ity later with something like CopyInterpParameters()
    The output is the object itself (this).
  **/
  @:ufunction @:final public function K2_CopyMaterialInstanceParameters(Source : unreal.UMaterialInterface) : Void;
  
  /**
    Copies over parameters given a material instance (only copy from the instance, not following the hierarchy)
    much faster than K2_CopyMaterialInstanceParameters(),
    The output is the object itself (this).
    @param Source ignores the call if 0
  **/
  @:ufunction @:final public function CopyInterpParameters(Source : unreal.UMaterialInstance) : Void;
  
  /**
    Copy parameter values from another material instance. This will copy only
    parameters explicitly overridden in that material instance!!
  **/
  @:ufunction @:final public function CopyParameterOverrides(MaterialInstance : unreal.UMaterialInstance) : Void;
  
}
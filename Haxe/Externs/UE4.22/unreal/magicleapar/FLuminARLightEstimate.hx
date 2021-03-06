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
package unreal.magicleapar;

/**
  A struct describes the ARCore light estimation.
**/
@:umodule("MagicLeapAR")
@:glueCppIncludes("Public/LuminARTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FLuminARLightEstimate {
  
  /**
    The RGB scale to match the color of the light in the real environment.
  **/
  @:uproperty public var RGBScaleFactor : unreal.FVector;
  
  /**
    The average pixel intensity of the passthrough camera image.
  **/
  @:uproperty public var PixelIntensity : unreal.Float32;
  
  /**
    Whether this light estimation is valid.
  **/
  @:uproperty public var bIsValid : Bool;
  
}

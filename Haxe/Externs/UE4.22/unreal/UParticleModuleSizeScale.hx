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
package unreal;

/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Particles/Size/ParticleModuleSizeScale.h")
@:uextern @:uclass extern class UParticleModuleSizeScale extends unreal.UParticleModuleSizeBase {
  
  /**
    Ignored
  **/
  @:uproperty public var EnableZ : Bool;
  
  /**
    Ignored
  **/
  @:uproperty public var EnableY : Bool;
  
  /**
    Ignored
  **/
  @:uproperty public var EnableX : Bool;
  
  /**
    The amount the BaseSize should be scaled before being used as the size of the particle.
    The value is retrieved using the RelativeTime of the particle during its update.
    NOTE: this module overrides any size adjustments made prior to this module in that frame.
  **/
  @:uproperty public var SizeScale : unreal.FRawDistributionVector;
  
}

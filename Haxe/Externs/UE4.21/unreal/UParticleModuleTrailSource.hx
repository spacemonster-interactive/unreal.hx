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
@:glueCppIncludes("Particles/Trail/ParticleModuleTrailSource.h")
@:uextern @:uclass extern class UParticleModuleTrailSource extends unreal.UParticleModuleTrailBase {
  
  /**
    Interhit particle rotation - only valid for SourceMethod of PET2SRCM_Particle.
  **/
  @:uproperty public var bInheritRotation : Bool;
  
  /**
    Particle selection method, when using the SourceMethod of Particle.
  **/
  @:uproperty public var SelectionMethod : unreal.EParticleSourceSelectionMethod;
  
  /**
    Default offsets from the source(s).
    If there are < SourceOffsetCount slots, the grabbing of values will simply wrap.
  **/
  @:uproperty public var SourceOffsetDefaults : unreal.TArray<unreal.FVector>;
  
  /**
    SourceOffsetCount
    The number of source offsets that can be expected to be found on the instance.
    These must be named
            TrailSourceOffset#
  **/
  @:uproperty public var SourceOffsetCount : unreal.Int32;
  
  /**
    Whether to lock the source to the life of the particle.
  **/
  @:uproperty public var bLockSourceStength : Bool;
  
  /**
    The strength of the tangent from the source point for each Trail.
  **/
  @:uproperty public var SourceStrength : unreal.FRawDistributionFloat;
  
  /**
    The name of the source - either the emitter or Actor.
  **/
  @:uproperty public var SourceName : unreal.FName;
  
  /**
    The source method for the trail.
  **/
  @:uproperty public var SourceMethod : unreal.ETrail2SourceMethod;
  
}

/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Particles/Spawn/ParticleModuleSpawnPerUnit.h")
@:noClass @:uextern extern class UParticleModuleSpawnPerUnit extends unreal.UParticleModuleSpawnBase {
  
  /**
    If true, ignore the Z-component of the movement
  **/
  public var bIgnoreMovementAlongZ : Bool;
  
  /**
    If true, ignore the Y-component of the movement
  **/
  public var bIgnoreMovementAlongY : Bool;
  
  /**
    If true, ignore the X-component of the movement
  **/
  public var bIgnoreMovementAlongX : Bool;
  
  /**
    The maximum valid movement for a single frame.
    If 0.0, then the check is not performed.
    Currently, if the distance moved between frames is greater than this
    then NO particles will be spawned.
    This is primiarily intended to cover cases where the PSystem is
    attached to teleporting objects.
  **/
  public var MaxFrameDistance : unreal.Float32;
  
  /**
    The tolerance for moving vs. not moving w.r.t. the bIgnoreSpawnRateWhenMoving flag.
    Ie, if (DistanceMoved < (UnitScalar x MovementTolerance)) then consider it not moving.
  **/
  public var MovementTolerance : unreal.Float32;
  
  /**
    If true, process the default spawn rate when not moving...
    When not moving, skip the default spawn rate.
    If false, return the bProcessSpawnRate setting.
  **/
  public var bIgnoreSpawnRateWhenMoving : Bool;
  
  /**
    The amount to spawn per meter distribution.
    The value is retrieved using the EmitterTime.
  **/
  public var SpawnPerUnit : unreal.FRawDistributionFloat;
  
  /**
    The scalar to apply to the distance traveled.
    The value from SpawnPerUnit is divided by this value to give the actual
    number of particles per unit.
  **/
  public var UnitScalar : unreal.Float32;
  
}

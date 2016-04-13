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
  Group of Root Motion Sources that are applied
**/
@:glueCppIncludes("GameFramework/Character.h")
@:uextern extern class FRootMotionSourceGroup {
  
  /**
    Aggregate Settings of the last group of accumulated sources
  **/
  public var LastAccumulatedSettings : unreal.FRootMotionSourceSettings;
  
  /**
    True when we had additive velocity applied last tick, checked to know if we should restore
    LastPreAdditiveVelocity before a Velocity computation
  **/
  public var bIsAdditiveVelocityApplied : Bool;
  
  /**
    Saved off pre-additive-applied Velocity, used for being able to reliably add/remove additive
    velocity from currently computed Velocity (otherwise we would be removing additive velocity
    that no longer exists, like if you run into a wall and your Velocity becomes 0 - subtracting
    the velocity that we added heading into the wall last tick would make you go backwards. With
    this method we override that resulting Velocity due to obstructions
  **/
  public var LastPreAdditiveVelocity : unreal.FVector;
  
  /**
    Whether this group has override root motion sources
  **/
  public var bHasOverrideSources : Bool;
  
  /**
    Whether this group has additive root motion sources
  **/
  public var bHasAdditiveSources : Bool;
  
}
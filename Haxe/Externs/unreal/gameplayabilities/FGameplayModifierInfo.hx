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
package unreal.gameplayabilities;


/**
  FGameplayModifierInfo
      Tells us "Who/What we" modify
      Does not tell us how exactly
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("GameplayEffect.h")
@:uextern extern class FGameplayModifierInfo {
  public var TargetTags : unreal.gameplayabilities.FGameplayTagRequirements;
  public var SourceTags : unreal.gameplayabilities.FGameplayTagRequirements;
  
  /**
    Magnitude of the modifier
  **/
  public var ModifierMagnitude : unreal.gameplayabilities.FGameplayEffectModifierMagnitude;
  
  /**
    Now "deprecated," though being handled in a custom manner to avoid engine version bump.
  **/
  public var Magnitude : unreal.gameplayabilities.FScalableFloat;
  
  /**
    The numeric operation of this modifier: Override, Add, Multiply, etc
  **/
  public var ModifierOp : unreal.gameplayabilities.EGameplayModOp;
  
  /**
    The Attribute we modify or the GE we modify modifies.
  **/
  public var Attribute : unreal.gameplayabilities.FGameplayAttribute;
  
}
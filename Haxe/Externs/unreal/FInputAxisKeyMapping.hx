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
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Defines a mapping between an axis and key
  
  @see https://docs.unrealengine.com/latest/INT/Gameplay/Input/index.html
**/
@:glueCppIncludes("GameFramework/InputSettings.h")
@:noCopy @:noEquals @:uextern extern class FInputAxisKeyMapping {
  
  /**
    Multiplier to use for the mapping when accumulating the axis value
  **/
  public var Scale : unreal.Float32;
  
  /**
    Key to bind it to.
  **/
  public var Key : unreal.inputcore.FKey;
  
  /**
    Friendly name of axis, e.g "MoveForward"
  **/
  public var AxisName : unreal.FName;
  
}

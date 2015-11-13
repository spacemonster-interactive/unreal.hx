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
  
  An integral key, which holds the key time and the key value
**/
@:glueCppIncludes("Sections/MovieSceneBoolSection.h")
@:noCopy @:noEquals @:uextern extern class FIntegralKey {
  
  /**
    The keyed integral value
  **/
  public var Value : unreal.Int32;
  
  /**
    The keyed time
  **/
  public var Time : unreal.Float32;
  
}

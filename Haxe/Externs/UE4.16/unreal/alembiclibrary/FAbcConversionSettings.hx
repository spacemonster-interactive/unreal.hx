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
package unreal.alembiclibrary;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("AlembicLibrary")
@:glueCppIncludes("AbcImportSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAbcConversionSettings {
  
  /**
    Rotation in Euler angles that should be applied
  **/
  @:uproperty public var Rotation : unreal.FVector;
  
  /**
    Scale value that should be applied
  **/
  @:uproperty public var Scale : unreal.FVector;
  
  /**
    Flag whether or not to flip the V channel in the Texture Coordinates
  **/
  @:uproperty public var bFlipV : Bool;
  
  /**
    Flag whether or not to flip the U channel in the Texture Coordinates
  **/
  @:uproperty public var bFlipU : Bool;
  
  /**
    Currently preset that should be applied
  **/
  @:uproperty public var Preset : unreal.alembiclibrary.EAbcConversionPreset;
  
}
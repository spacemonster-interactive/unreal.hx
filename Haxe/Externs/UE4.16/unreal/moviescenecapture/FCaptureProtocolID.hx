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
package unreal.moviescenecapture;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Structure used to uniquely identify a specific capture protocol
**/
@:umodule("MovieSceneCapture")
@:glueCppIncludes("MovieSceneCaptureProtocolRegistry.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FCaptureProtocolID {
  @:uproperty public var Identifier : unreal.FName;
  
}
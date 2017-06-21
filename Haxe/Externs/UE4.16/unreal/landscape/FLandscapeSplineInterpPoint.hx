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
package unreal.landscape;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("Landscape")
@:glueCppIncludes("LandscapeSplineSegment.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FLandscapeSplineInterpPoint {
  
  /**
    Start/End Falloff fraction
  **/
  @:uproperty public var StartEndFalloff : unreal.Float32;
  
  /**
    Right FalloffPoint
  **/
  @:uproperty public var FalloffRight : unreal.FVector;
  
  /**
    Left Falloff Point
  **/
  @:uproperty public var FalloffLeft : unreal.FVector;
  
  /**
    Right Point
  **/
  @:uproperty public var Right : unreal.FVector;
  
  /**
    Left Point
  **/
  @:uproperty public var Left : unreal.FVector;
  
  /**
    Center Point
  **/
  @:uproperty public var Center : unreal.FVector;
  
}
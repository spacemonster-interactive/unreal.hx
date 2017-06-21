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
package unreal.physxvehicles;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  
**/
@:umodule("PhysXVehicles")
@:glueCppIncludes("WheeledVehicleMovementComponent4W.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FVehicleGearData {
  
  /**
    Value of engineRevs/maxEngineRevs that is high enough to gear up
  **/
  @:uproperty public var UpRatio : unreal.Float32;
  
  /**
    Value of engineRevs/maxEngineRevs that is low enough to gear down
  **/
  @:uproperty public var DownRatio : unreal.Float32;
  
  /**
    Determines the amount of torque multiplication
  **/
  @:uproperty public var Ratio : unreal.Float32;
  
}
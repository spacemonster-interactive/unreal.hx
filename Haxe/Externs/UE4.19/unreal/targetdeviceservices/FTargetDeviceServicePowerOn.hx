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
package unreal.targetdeviceservices;

/**
  Implements a message for powering on a target device.
**/
@:umodule("TargetDeviceServices")
@:glueCppIncludes("Public/TargetDeviceServiceMessages.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FTargetDeviceServicePowerOn {
  
  /**
    Holds the name of the user that wishes to power on the device.
  **/
  @:uproperty public var Operator : unreal.FString;
  
}
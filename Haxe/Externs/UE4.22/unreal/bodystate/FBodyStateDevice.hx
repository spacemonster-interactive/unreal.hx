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
package unreal.bodystate;

@:umodule("BodyState")
@:glueCppIncludes("Public/BodyStateDevice.h")
@:uextern @:ustruct extern class FBodyStateDevice {
  @:uproperty public var Skeleton : unreal.bodystate.UBodyStateSkeleton;
  @:uproperty public var Config : unreal.bodystate.FBodyStateDeviceConfig;
  @:uproperty public var DeviceId : unreal.Int32;
  
}

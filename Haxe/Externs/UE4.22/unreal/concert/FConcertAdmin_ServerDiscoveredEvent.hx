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
package unreal.concert;

@:umodule("Concert")
@:glueCppIncludes("Public/ConcertMessages.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FConcertAdmin_ServerDiscoveredEvent extends unreal.concerttransport.FConcertEndpointDiscoveryEvent {
  
  /**
    Contains information on the server settings
  **/
  @:uproperty public var ServerFlags : unreal.concert.EConcertSeverFlags;
  
  /**
    Basic information about the server instance
  **/
  @:uproperty public var InstanceInfo : unreal.concert.FConcertInstanceInfo;
  
  /**
    Server designated name
  **/
  @:uproperty public var ServerName : unreal.FString;
  
}

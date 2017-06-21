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
  Network settings.
**/
@:glueCppIncludes("Engine/NetworkSettings.h")
@:uextern @:uclass extern class UNetworkSettings extends unreal.UDeveloperSettings {
  
  /**
    If true, origin rebasing is enabled in multiplayer games, meaning that servers and clients can have different local world origins.
  **/
  @:uproperty public var bEnableMultiplayerWorldOriginRebasing : Bool;
  
  /**
    If true, libcurl authenticates the peer's certificate. Disable to allow self-signed certificates.
  **/
  @:uproperty public var bVerifyPeer : Bool;
  
}
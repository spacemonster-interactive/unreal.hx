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
package unreal.tcpmessaging;


/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Private/Settings/TcpMessagingSettings.h")
@:noClass @:uextern extern class UTcpMessagingSettings extends unreal.UObject {
  
  /**
    Delay time between attempts to re-establish outgoing connections that become disconnected or fail to connect
    0 disables reconnection
  **/
  public var ConnectionRetryDelay : unreal.Int32;
  
  /**
    The IP endpoints to try to establish outgoing connection to.
    
    Use this setting to connect to a remote peer.
    The format is IP_ADDRESS:PORT_NUMBER.
  **/
  public var ConnectToEndpoints : unreal.TArray<unreal.FString>;
  
  /**
    The IP endpoint to listen for incoming connections.
    
    The format is IP_ADDRESS:PORT_NUMBER or blank to disable listening.
  **/
  public var ListenEndpoint : unreal.FString;
  
  /**
    Whether the TCP transport channel is enabled
  **/
  public var EnableTransport : Bool;
  
}
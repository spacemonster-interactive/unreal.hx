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
package unreal.gamecircleruntimesettings;

/**
  Implements the settings for the OnlineSubsystemGameCircle plugin.
**/
@:umodule("GameCircleRuntimeSettings")
@:glueCppIncludes("GameCircleRuntimeSettings.h")
@:uextern @:uclass extern class UGameCircleRuntimeSettings extends unreal.UObject {
  
  /**
    The path of the api_key text file generated by Amazon from your distribution keystore from the Game Project directory
  **/
  @:uproperty public var DistributionAPIKeyFile : unreal.FString;
  
  /**
    The path of the api_key text file generated by Amazon from your debug keystore from the Game Project directory
  **/
  @:uproperty public var DebugAPIKeyFile : unreal.FString;
  
  /**
    Removes touchscreen hardware requirement when enabled
  **/
  @:uproperty public var bEnableFireTVSupport : Bool;
  
  /**
    Enables Amazon In App Purchasing
  **/
  @:uproperty public var bSupportsInAppPurchasing : Bool;
  
  /**
    Enables the Amazon GameCircle OnlineSubsystem
  **/
  @:uproperty public var bEnableAmazonGameCircleSupport : Bool;
  
}

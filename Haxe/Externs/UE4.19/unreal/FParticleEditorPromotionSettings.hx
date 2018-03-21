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
package unreal;

/**
  Holds settings for the particle editor build promotion tests
**/
@:glueCppIncludes("Classes/Tests/AutomationTestSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FParticleEditorPromotionSettings {
  
  /**
    Default particle asset to use for tests
  **/
  @:uproperty public var DefaultParticleAsset : unreal.FFilePath;
  
}
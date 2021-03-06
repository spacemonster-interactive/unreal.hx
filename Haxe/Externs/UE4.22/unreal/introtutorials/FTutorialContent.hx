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
package unreal.introtutorials;

/**
  Content wrapper
**/
@:umodule("IntroTutorials")
@:glueCppIncludes("Public/EditorTutorial.h")
@:uextern @:ustruct extern class FTutorialContent {
  
  /**
    Localized text to use with this content
  **/
  @:uproperty public var Text : unreal.FText;
  
  /**
    Excerpt name for UDN excerpt
  **/
  @:uproperty public var ExcerptName : unreal.FString;
  
  /**
    Content reference string, path etc.
  **/
  @:uproperty public var Content : unreal.FString;
  
  /**
    The type of this content
  **/
  @:uproperty public var Type : unreal.introtutorials.ETutorialContent;
  
}

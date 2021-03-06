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
package unreal.translationeditor;

@:umodule("TranslationEditor")
@:glueCppIncludes("Private/TranslationUnit.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FTranslationChange {
  
  /**
    Translation at time of this change
  **/
  @:uproperty public var Translation : unreal.FString;
  
  /**
    Source at time of this change
  **/
  @:uproperty public var Source : unreal.FString;
  
  /**
    Date of this change //, meta=(DisplayName = "Date & Time"))
  **/
  @:uproperty public var DateAndTime : unreal.FDateTime;
  
  /**
    The changelist of this change
  **/
  @:uproperty public var Version : unreal.FString;
  
}

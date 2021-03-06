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
  Transform definition
**/
@:glueCppIncludes("Classes/Animation/AnimationAsset.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FBlendSampleData {
  
  /**
    We may merge multiple samples if they use the same animation
    Calculate the combined sample play rate here
  **/
  @:uproperty public var SamplePlayRate : unreal.Float32;
  @:uproperty public var PreviousTime : unreal.Float32;
  @:uproperty public var Time : unreal.Float32;
  @:uproperty public var TotalWeight : unreal.Float32;
  @:uproperty public var Animation : unreal.UAnimSequence;
  @:uproperty public var SampleDataIndex : unreal.Int32;
  
}

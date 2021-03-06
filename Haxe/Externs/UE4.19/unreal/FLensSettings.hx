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

@:glueCppIncludes("Classes/Engine/Scene.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FLensSettings {
  
  /**
    in percent, Scene chromatic aberration / color fringe (camera imperfection) to simulate an artifact that happens in real-world lens, mostly visible in the image corners.
  **/
  @:uproperty public var ChromaticAberration : unreal.Float32;
  @:uproperty public var Imperfections : unreal.FLensImperfectionSettings;
  @:uproperty public var Bloom : unreal.FLensBloomSettings;
  
}

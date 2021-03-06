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
package unreal.timecodesynchronizer;

/**
  Synchronization Source using the Media Player framework
**/
@:umodule("TimecodeSynchronizer")
@:glueCppIncludes("MediaPlayerTimeSynchronizationSource.h")
@:uextern @:uclass extern class UMediaPlayerTimeSynchronizationSource extends unreal.timemanagement.UTimeSynchronizationSource {
  
  /**
    Texture linked to the media player
  **/
  @:uproperty public var MediaTexture : unreal.mediaassets.UMediaTexture;
  
  /**
    Media source asset of this input
  **/
  @:uproperty public var MediaSource : unreal.mediaassets.UTimeSynchronizableMediaSource;
  
}

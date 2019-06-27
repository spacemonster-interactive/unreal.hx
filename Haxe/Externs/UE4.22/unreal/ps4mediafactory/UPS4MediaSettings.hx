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
package unreal.ps4mediafactory;

/**
  Settings for the PS4Media plug-in.
**/
@:umodule("PS4MediaFactory")
@:glueCppIncludes("PS4MediaSettings.h")
@:uextern @:uclass extern class UPS4MediaSettings extends unreal.UObject {
  
  /**
    The number of output video frame buffers (default = 6).
  **/
  @:uproperty public var OutputVideoFrameBuffers : unreal.Int32;
  
  /**
    The video buffer size for HLS media sources (in MB, default = 8).
  **/
  @:uproperty public var HlsVideoBufferSizeMB : unreal.Int32;
  
  /**
    The video buffer size for local file media sources (in MB, default = 1).
  **/
  @:uproperty public var FileVideoBufferSizeMB : unreal.Int32;
  
}
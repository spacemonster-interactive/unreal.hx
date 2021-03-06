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
package unreal.mediaiocore;

/**
  Configuration of a device output.
**/
@:umodule("MediaIOCore")
@:glueCppIncludes("Public/MediaIOCoreDefinitions.h")
@:uextern @:ustruct extern class FMediaIOOutputConfiguration {
  
  /**
    The port of the video channel on the device to output the synchronize to.
  **/
  @:uproperty public var ReferencePortIdentifier : unreal.Int32;
  
  /**
    The Device output sync with either its internal clock, an external reference, or an other input.
  **/
  @:uproperty public var OutputReference : unreal.mediaiocore.EMediaIOReferenceType;
  
  /**
    The port of the video channel on the device to output the key to.
    @note        'Frame Buffer Pixel Format' must be set to at least 8 bits of alpha.
    @note        'Enable alpha channel support in post-processing' must be set to 'Allow through tonemapper'.
  **/
  @:uproperty public var KeyPortIdentifier : unreal.Int32;
  
  /**
    Whether to output the fill or the fill and key.
  **/
  @:uproperty public var OutputType : unreal.mediaiocore.EMediaIOOutputType;
  
  /**
    The signal output format.
  **/
  @:uproperty public var MediaConfiguration : unreal.mediaiocore.FMediaIOConfiguration;
  
}

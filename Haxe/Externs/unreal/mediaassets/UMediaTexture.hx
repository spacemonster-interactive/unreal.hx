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
package unreal.mediaassets;


/**
  Implements a texture asset for rendering video tracks from UMediaPlayer assets.
**/
@:umodule("MediaAssets")
@:glueCppIncludes("MediaTexture.h")
@:uextern extern class UMediaTexture extends unreal.UTexture {
  
  /**
    The MediaPlayer asset to stream video from.
  **/
  private var MediaPlayer : unreal.mediaassets.UMediaPlayer;
  
  /**
    The index of the MediaPlayer's video track to render on this texture.
  **/
  public var VideoTrackIndex : unreal.Int32;
  
  /**
    The color used to clear the texture if no video data is drawn.
  **/
  public var ClearColor : unreal.FLinearColor;
  
  /**
    The addressing mode to use for the Y axis.
  **/
  public var AddressY : unreal.TextureAddress;
  
  /**
    The addressing mode to use for the X axis.
  **/
  public var AddressX : unreal.TextureAddress;
  
  /**
    Sets the media player asset to be used for this texture.
    
    @param InMediaPlayer The asset to set.
  **/
  @:final public function SetMediaPlayer(InMediaPlayer : unreal.mediaassets.UMediaPlayer) : Void;
  
}
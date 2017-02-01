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
package unreal.cinematiccamera;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Settings to control camera focus
**/
@:glueCppIncludes("CineCameraComponent.h")
@:noCopy @:noEquals @:uextern extern class FCameraFocusSettings {
  
  /**
    Additional focus depth offset, used for manually tweaking if your chosen focus method needs adjustment
  **/
  public var FocusOffset : unreal.Float32;
  
  /**
    Controls interpolation speed when smoothing focus distance changes. Ignored if bSmoothFocusChanges is false.
  **/
  public var FocusSmoothingInterpSpeed : unreal.Float32;
  
  /**
    True to use interpolation to smooth out changes in focus distance, false for focus distance changes to be instantaneous.
  **/
  public var bSmoothFocusChanges : Bool;
  #if WITH_EDITORONLY_DATA
  
  /**
    For customizing the focus plane color, in case the default doesn't show up well in your scene.
  **/
  public var DebugFocusPlaneColor : unreal.FColor;
  
  /**
    True to draw a translucent plane at the current focus depth, for easy tweaking.
  **/
  public var bDrawDebugFocusPlane : Bool;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Settings to control tracking focus (tracking focus mode only)
  **/
  public var TrackingFocusSettings : unreal.cinematiccamera.FCameraTrackingFocusSettings;
  
  /**
    Manually-controlled focus distance (manual focus mode only)
  **/
  public var ManualFocusDistance : unreal.Float32;
  
  /**
    Which method to use to handle camera focus
  **/
  public var FocusMethod : unreal.cinematiccamera.ECameraFocusMethod;
  
}
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
package unreal.piepreviewdeviceprofileselector;

/**
  Represents the appearance of an SPIEWindow
**/
@:umodule("PIEPreviewDeviceProfileSelector")
@:glueCppIncludes("Private/PIEPreviewWindowStyle.h")
@:uextern @:ustruct extern class FPIEPreviewWindowStyle extends unreal.slatecore.FSlateWidgetStyle {
  
  /**
    Style used to draw the window 1X button
  **/
  @:uproperty public var FullMobileContentScaleFactorButtonStyle : unreal.slatecore.FButtonStyle;
  
  /**
    Style used to draw the window 0.5x button
  **/
  @:uproperty public var HalfMobileContentScaleFactorButtonStyle : unreal.slatecore.FButtonStyle;
  
  /**
    Style used to draw the window 0.25x button
  **/
  @:uproperty public var QuarterMobileContentScaleFactorButtonStyle : unreal.slatecore.FButtonStyle;
  
  /**
    Style used to draw the window ScreenRotationButton button
  **/
  @:uproperty public var ScreenRotationButtonStyle : unreal.slatecore.FButtonStyle;
  
}

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
package unreal.umg;


/**
  A widget for selecting a single key or a single key with a modifier.
**/
@:glueCppIncludes("UMG.h")
@:uextern extern class UInputKeySelector extends unreal.umg.UWidget {
  
  /**
    input chord representing the selected key, if false modifier keys are ignored.
  **/
  public var bAllowModifierKeys : Bool;
  
  /**
    The color of the text used to display the currently selected key.
  **/
  public var ColorAndOpacity : unreal.FLinearColor;
  
  /**
    The amount of blank space around the text used to display the currently selected key.
  **/
  public var Margin : unreal.slatecore.FMargin;
  
  /**
    The font used to display the currently selected key.
  **/
  public var Font : unreal.slatecore.FSlateFontInfo;
  
  /**
    The currently selected key chord.
  **/
  public var SelectedKey : unreal.slate.FInputChord;
  
  /**
    Sets the currently selected key.
  **/
  @:final public function SetSelectedKey(InSelectedKey : unreal.slate.FInputChord) : Void;
  
  /**
    Sets whether or not modifier keys are allowed in the selected key.
  **/
  @:final public function SetAllowModifierKeys(bInAllowModifierKeys : Bool) : Void;
  
  /**
    Returns true if the widget is currently selecting a key, otherwise returns false.
  **/
  @:thisConst @:final public function GetIsSelectingKey() : Bool;
  
}
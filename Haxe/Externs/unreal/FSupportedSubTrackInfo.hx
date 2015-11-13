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
package unreal;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Helper struct for creating sub tracks supported by this track
**/
@:glueCppIncludes("Matinee/InterpTrack.h")
@:noCopy @:noEquals @:uextern extern class FSupportedSubTrackInfo {
  
  /**
    Index into the any subtrack group this subtrack belongs to (can be -1 for no group)
  **/
  public var GroupIndex : unreal.Int32;
  
  /**
    The name of the subtrack
  **/
  public var SubTrackName : unreal.FString;
  
  /**
    The sub track class which is supported by this track
  **/
  public var SupportedClass : unreal.TSubclassOf<unreal.UInterpTrack>;
  
}

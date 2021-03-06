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
package unreal.eyetracker;

/**
  Represents a unified gaze ray that incorporates both eyes.
**/
@:umodule("EyeTracker")
@:glueCppIncludes("Public/EyeTrackerTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FEyeTrackerGazeData {
  
  /**
    Value [0..1] that represents confidence in the gaze ray data above. Stable, reliably tracked eyes will be at or near 1. Fast-moving or unreliably tracked eyes will be at or near 0.
  **/
  @:uproperty public var ConfidenceValue : unreal.Float32;
  
  /**
    Location that the eyes converge. This is the 3d point where the tracked viewer is looking.
  **/
  @:uproperty public var FixationPoint : unreal.FVector;
  
  /**
    Forward direction of the unified gaze ray.
  **/
  @:uproperty public var GazeDirection : unreal.FVector;
  
  /**
    Origin of the unified gaze ray.
  **/
  @:uproperty public var GazeOrigin : unreal.FVector;
  
}

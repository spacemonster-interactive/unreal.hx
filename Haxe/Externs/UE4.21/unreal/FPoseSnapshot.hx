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

/**
  A pose for a skeletal mesh
**/
@:glueCppIncludes("Public/Animation/PoseSnapshot.h")
@:uextern @:ustruct extern class FPoseSnapshot {
  
  /**
    Whether the pose is valid
  **/
  @:uproperty public var bIsValid : Bool;
  
  /**
    The name for this snapshot
  **/
  @:uproperty public var SnapshotName : unreal.FName;
  
  /**
    The name of the skeletal mesh that was used to take this snapshot
  **/
  @:uproperty public var SkeletalMeshName : unreal.FName;
  
  /**
    Array of bone names (corresponding to LocalTransforms)
  **/
  @:uproperty public var BoneNames : unreal.TArray<unreal.FName>;
  
  /**
    Array of transforms per-bone
  **/
  @:uproperty public var LocalTransforms : unreal.TArray<unreal.FTransform>;
  
}

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
package unreal.googlearcorebase;

/**
  A collection of processed images for ARCore to track.
  
  Deprecated. Please use the ARCandidateImage list in UARSessionConfig instead.
**/
@:umodule("GoogleARCoreBase")
@:glueCppIncludes("GoogleARCoreAugmentedImageDatabase.h")
@:uextern @:uclass extern class UGoogleARCoreAugmentedImageDatabase extends unreal.UDataAsset {
  @:ufunction(BlueprintCallable) @:final public function AddRuntimeAugmentedImageFromTexture(ImageTexture : unreal.UTexture2D, ImageName : unreal.FName, ImageWidthInMeter : unreal.Float32 = 0.000000) : unreal.Int32;
  
  /**
    The serialized database, in the ARCore augmented image database
    serialization format.
  **/
  @:uproperty public var SerializedDatabase : unreal.TArray<unreal.UInt8>;
  
  /**
    The individual instances of
    FGoogleARCoreAugmentedImageDatabaseEntry objects.
  **/
  @:uproperty public var Entries : unreal.TArray<unreal.googlearcorebase.FGoogleARCoreAugmentedImageDatabaseEntry>;
  
}

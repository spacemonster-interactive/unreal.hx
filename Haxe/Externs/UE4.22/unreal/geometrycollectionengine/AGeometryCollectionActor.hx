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
package unreal.geometrycollectionengine;

@:umodule("GeometryCollectionEngine")
@:glueCppIncludes("GeometryCollection/GeometryCollectionActor.h")
@:uextern @:uclass extern class AGeometryCollectionActor extends unreal.AActor {
  @:uproperty public var GeometryCollectionDebugDrawComponent : unreal.geometrycollectionengine.UGeometryCollectionDebugDrawComponent;
  
  /**
    GeometryCollectionComponent
  **/
  @:uproperty public var GeometryCollectionComponent : unreal.geometrycollectionengine.UGeometryCollectionComponent;
  @:ufunction(BlueprintCallable) @:thisConst @:final public function RaycastSingle(Start : unreal.FVector, End : unreal.FVector, OutHit : unreal.PRef<unreal.FHitResult>) : Bool;
  
}

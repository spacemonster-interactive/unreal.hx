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
package unreal.chaosniagara;

/**
  Data Interface allowing sampling of Chaos Destruction data.
**/
@:umodule("ChaosNiagara")
@:glueCppIncludes("NiagaraDataInterfaceChaosDestruction.h")
@:uextern @:uclass extern class UNiagaraDataInterfaceChaosDestruction extends unreal.niagara.UNiagaraDataInterface {
  @:uproperty private var LastDataTimeProcessedArray : unreal.TArray<unreal.Float32>;
  @:uproperty private var LastSpawnTime : unreal.Float32;
  @:uproperty private var PrevLastSpawnedPointID : unreal.Int32;
  @:uproperty private var LastSpawnedPointID : unreal.Int32;
  
  /**
    ParticleIndex to process collisionData for
  **/
  @:uproperty public var ParticleIndexToProcess : unreal.Int32;
  
  /**
    Debug visualization method
  **/
  @:uproperty public var DebugType : unreal.chaosniagara.EDebugTypeEnum;
  
  /**
    Clamp particles velocity
  **/
  @:uproperty public var VelocityMagnitudeMax : unreal.Float32;
  
  /**
    Offset value added to spawned particles velocity
  **/
  @:uproperty public var VelocityOffset : unreal.FVector;
  @:uproperty public var SpreadAngleMax : unreal.Float32;
  
  /**
    Every particles will be spawned with random velocity with magnitude in the range of [RandomVelocityMagnitudeMin, RandomVelocityMagnitudeMax]
  **/
  @:uproperty public var RandomVelocityMagnitude : unreal.FVector2D;
  
  /**
    The method used to create the random velocities for the newly spawned particles
  **/
  @:uproperty public var RandomVelocityGenerationType : unreal.chaosniagara.ERandomVelocityGenerationTypeEnum;
  
  /**
    How much of the collision velocity gets inherited
  **/
  @:uproperty public var InheritedVelocityMultiplier : unreal.Float32;
  @:uproperty public var BreakingRegionRadiusMultiplier : unreal.Float32;
  
  /**
    Random displacement value for the particle spawn position
  **/
  @:uproperty public var RandomPositionMagnitude : unreal.Float32;
  
  /**
    For every collision random number of particles will be spawned in the range of [SpawnMultiplierMin, SpawnMultiplierMax]
  **/
  @:uproperty public var SpawnMultiplierMax : unreal.Int32;
  
  /**
    For every collision random number of particles will be spawned in the range of [SpawnMultiplierMin, SpawnMultiplierMax]
  **/
  @:uproperty public var SpawnMultiplierMin : unreal.Int32;
  
  /**
    Sorting method to sort the collision data
  **/
  @:uproperty public var DataSortingType : unreal.chaosniagara.EDataSortTypeEnum;
  
  /**
    Minimum mass in a RBD collision to spawn particles from
  **/
  @:uproperty public var MinMassToSpawn : unreal.Float32;
  
  /**
    Minimum speed in a RBD collision to spawn particles from
  **/
  @:uproperty public var MinSpeedToSpawn : unreal.Float32;
  
  /**
    Minimum accumulated impulse in a RBD collision to spawn particles from
  **/
  @:uproperty public var MinImpulseToSpawn : unreal.Float32;
  
  /**
    Turn on/off spawning
  **/
  @:uproperty public var DoSpawn : Bool;
  
  /**
    Maximum number of collisions used for spawning particles every time RBD collision data gets processed
  **/
  @:uproperty public var MaxNumberOfDataEntries : unreal.Int32;
  
  /**
    Number of times the RBD collision data gets processed every second
  **/
  @:uproperty public var DataProcessFrequency : unreal.Int32;
  
  /**
    Sorting method to sort the collision data
  **/
  @:uproperty public var DataSourceType : unreal.chaosniagara.EDataSourceTypeEnum;
  
}
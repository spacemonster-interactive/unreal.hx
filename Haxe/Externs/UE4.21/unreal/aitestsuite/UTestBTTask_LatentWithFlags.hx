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
package unreal.aitestsuite;

/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, some of its methods are inaccessible
  
  
**/
@:umodule("AITestSuite")
@:glueCppIncludes("BehaviorTree/TestBTTask_LatentWithFlags.h")
@:noClass @:uextern @:uclass extern class UTestBTTask_LatentWithFlags extends unreal.aimodule.UBTTaskNode {
  @:uproperty public var LogResult : unreal.aimodule.EBTNodeResult;
  @:uproperty public var KeyNameAbort : unreal.FName;
  @:uproperty public var KeyNameExecute : unreal.FName;
  @:uproperty public var AbortTicks : unreal.Int32;
  @:uproperty public var ExecuteTicks : unreal.Int32;
  @:uproperty public var LogIndexAbortFinish : unreal.Int32;
  @:uproperty public var LogIndexAbortStart : unreal.Int32;
  @:uproperty public var LogIndexExecuteFinish : unreal.Int32;
  @:uproperty public var LogIndexExecuteStart : unreal.Int32;
  
}

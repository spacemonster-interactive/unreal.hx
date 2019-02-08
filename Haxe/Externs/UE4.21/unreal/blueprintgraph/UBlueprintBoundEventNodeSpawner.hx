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
package unreal.blueprintgraph;

/**
  Takes care of spawning UK2Node_Event nodes. Acts as the "action" portion of
  certain FBlueprintActionMenuItems. Will not spawn a new event node if one
  associated with the specified function already exits (instead, Invoke() will
  return the existing one). Evolved from FEdGraphSchemaAction_K2AddEvent and
  FEdGraphSchemaAction_K2ViewNode.
**/
@:umodule("BlueprintGraph")
@:glueCppIncludes("BlueprintBoundEventNodeSpawner.h")
@:uextern @:uclass extern class UBlueprintBoundEventNodeSpawner extends unreal.blueprintgraph.UBlueprintEventNodeSpawner {
  
}
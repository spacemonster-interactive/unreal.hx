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
  Enum specifying the reduction type to use when simplifying static meshes with the engines internal tool
**/
@:glueCppIncludes("Classes/Engine/MeshMerging.h")
@:uname("EStaticMeshReductionTerimationCriterion")
@:class @:uextern @:uenum extern enum EStaticMeshReductionTerimationCriterion {
  Triangles;
  Vertices;
  Any;
  
}
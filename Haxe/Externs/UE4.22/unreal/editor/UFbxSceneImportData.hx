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
package unreal.editor;

@:umodule("UnrealEd")
@:glueCppIncludes("Factories/FbxSceneImportData.h")
@:uextern @:uclass extern class UFbxSceneImportData extends unreal.UObject {
  #if WITH_EDITORONLY_DATA
  
  /**
    The path of the fbx file use for the last import
  **/
  @:uproperty public var SourceFbxFile : unreal.FString;
  #end // WITH_EDITORONLY_DATA
  
}

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
  WARNING: This type was not defined as DLL export on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Materials/MaterialExpressionSceneTexture.h")
@:noClass @:uextern extern class UMaterialExpressionSceneTexture extends unreal.UMaterialExpression {
  
  /**
    Whether to use point sampled texture lookup (default) or using [bi-linear] filtered (can be slower, avoid faceted lock with distortions), some SceneTextures cannot be filtered
  **/
  public var bFiltered : Bool;
  
  /**
    Clamps texture coordinates to the range 0 to 1. Incurs a performance cost.
  **/
  public var bClampUVs : Bool;
  
  /**
    Which scene texture (screen aligned texture) we want to make a lookup into
  **/
  public var SceneTextureId : unreal.ESceneTextureId;
  
  /**
    Ignored if not specified
  **/
  public var Coordinates : unreal.FExpressionInput;
  
}

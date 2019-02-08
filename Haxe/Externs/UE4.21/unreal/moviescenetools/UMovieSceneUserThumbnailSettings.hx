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
package unreal.moviescenetools;

@:umodule("MovieSceneTools")
@:glueCppIncludes("MovieSceneToolsUserSettings.h")
@:uextern @:uclass extern class UMovieSceneUserThumbnailSettings extends unreal.UObject {
  
  /**
    Quality to render the thumbnails with
  **/
  @:uproperty public var Quality : unreal.moviescenetools.EThumbnailQuality;
  
  /**
    Size at which to draw thumbnails on thumbnail sections
  **/
  @:uproperty public var ThumbnailSize : unreal.FIntPoint;
  
  /**
    Whether to draw a single thumbnail for this section or as many as can fit
  **/
  @:uproperty public var bDrawSingleThumbnails : Bool;
  
  /**
    Whether to draw thumbnails or not
  **/
  @:uproperty public var bDrawThumbnails : Bool;
  
}
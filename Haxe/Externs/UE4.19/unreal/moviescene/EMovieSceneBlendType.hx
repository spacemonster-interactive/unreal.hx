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
package unreal.moviescene;

/**
  Movie scene blend type enumeration
**/
@:umodule("MovieScene")
@:glueCppIncludes("Public/Evaluation/Blending/MovieSceneBlendType.h")
@:uname("EMovieSceneBlendType")
@:class @:uextern @:uenum extern enum EMovieSceneBlendType {
  
  /**
    Blends all other weighted values together as an average of the total weight
  **/
  Absolute;
  
  /**
    Applies this value as a sum total of all other additives
  **/
  Additive;
  
}
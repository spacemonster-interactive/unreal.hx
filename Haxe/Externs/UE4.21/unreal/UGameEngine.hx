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
  Engine that manages core systems that enable a game.
**/
@:glueCppIncludes("Engine/GameEngine.h")
@:uextern @:uclass extern class UGameEngine extends unreal.UEngine {
  @:uproperty public var GameInstance : unreal.UGameInstance;
  
  /**
    Maximium time (in seconds) between the flushes of the logs on the server (best effort). If 0, this will happen every tick.
  **/
  @:uproperty public var ServerFlushLogInterval : unreal.Float32;
  
  /**
    Maximium delta time the engine uses to populate FApp::DeltaTime. If 0, unbound.
  **/
  @:uproperty public var MaxDeltaTime : unreal.Float32;
  
}

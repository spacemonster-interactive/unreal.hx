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
  GameState is a subclass of GameStateBase that behaves like a multiplayer match-based game.
  It is tied to functionality in GameMode.
**/
@:glueCppIncludes("GameFramework/GameState.h")
@:uextern @:uclass extern class AGameState extends unreal.AGameStateBase {
  
  /**
    Elapsed game time since match has started.
  **/
  @:uproperty public var ElapsedTime : unreal.Int32;
  
  /**
    Previous map state, used to handle if multiple transitions happen per frame
  **/
  @:uproperty private var PreviousMatchState : unreal.FName;
  
  /**
    What match state we are currently in
  **/
  @:uproperty private var MatchState : unreal.FName;
  
  /**
    Match state has changed
  **/
  @:ufunction public function OnRep_MatchState() : Void;
  
  /**
    Gives clients the chance to do something when time gets updates
  **/
  @:ufunction public function OnRep_ElapsedTime() : Void;
  
}

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
package unreal.party;

@:umodule("Party")
@:glueCppIncludes("Public/Party/PartyTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FPartyPrivacySettings {
  
  /**
    True to restrict the party exclusively to friends of the party leader
  **/
  @:uproperty public var bOnlyLeaderFriendsCanJoin : Bool;
  
  /**
    Who is allowed to send invitataions to the party?
  **/
  @:uproperty public var PartyInviteRestriction : unreal.party.EPartyInviteRestriction;
  
  /**
    The type of party in terms of advertised joinability restrictions
  **/
  @:uproperty public var PartyType : unreal.party.EPartyType;
  
}

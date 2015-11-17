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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("BehaviorTree/Decorators/BTDecorator_Blackboard.h")
@:uname("EArithmeticKeyOperation.Type")
@:uextern extern enum EArithmeticKeyOperation {
  
  /**
    Is Equal To
  **/
  @DisplayName("Is Equal To")
  Equal;
  
  /**
    Is Not Equal To
  **/
  @DisplayName("Is Not Equal To")
  NotEqual;
  
  /**
    Is Less Than
  **/
  @DisplayName("Is Less Than")
  Less;
  
  /**
    Is Less Than Or Equal To
  **/
  @DisplayName("Is Less Than Or Equal To")
  LessOrEqual;
  
  /**
    Is Greater Than
  **/
  @DisplayName("Is Greater Than")
  Greater;
  
  /**
    Is Greater Than Or Equal To
  **/
  @DisplayName("Is Greater Than Or Equal To")
  GreaterOrEqual;
  
}
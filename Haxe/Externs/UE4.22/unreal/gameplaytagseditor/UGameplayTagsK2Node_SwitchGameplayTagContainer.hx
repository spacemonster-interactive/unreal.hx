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
package unreal.gameplaytagseditor;

/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("GameplayTagsEditor")
@:glueCppIncludes("GameplayTagsK2Node_SwitchGameplayTagContainer.h")
@:uextern @:uclass extern class UGameplayTagsK2Node_SwitchGameplayTagContainer extends unreal.blueprintgraph.UK2Node_Switch {
  
  /**
    UPROPERTY(EditAnywhere, Category = PinOptions)
    bool UseInputsOnGraph;
  **/
  @:uproperty public var PinNames : unreal.TArray<unreal.FName>;
  @:uproperty public var PinContainers : unreal.TArray<unreal.gameplaytags.FGameplayTagContainer>;
  
}
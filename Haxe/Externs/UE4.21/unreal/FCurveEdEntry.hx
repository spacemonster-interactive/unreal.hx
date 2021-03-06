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
  Information about a particule curve being viewed.
  Property could be an FInterpCurve, a DistributionFloat or a DistributionVector
**/
@:glueCppIncludes("Classes/Engine/InterpCurveEdSetup.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FCurveEdEntry {
  @:uproperty public var ClampHigh : unreal.Float32;
  @:uproperty public var ClampLow : unreal.Float32;
  @:uproperty public var bClamp : unreal.Int32;
  @:uproperty public var bFloatingPointColorCurve : unreal.Int32;
  @:uproperty public var bColorCurve : unreal.Int32;
  @:uproperty public var bHideCurve : unreal.Int32;
  @:uproperty public var CurveName : unreal.FString;
  @:uproperty public var CurveColor : unreal.FColor;
  @:uproperty public var CurveObject : unreal.UObject;
  
}

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
  A drawing canvas.
**/
@:glueCppIncludes("Engine/Canvas.h")
@:uextern @:uclass extern class UCanvas extends unreal.UObject {
  
  /**
    Helper class to render 2d graphs on canvas
  **/
  @:uproperty public var ReporterGraph : unreal.UReporterGraph;
  
  /**
    Default texture to use
  **/
  @:uproperty public var GradientTexture0 : unreal.UTexture2D;
  @:uproperty public var DefaultTexture : unreal.UTexture2D;
  
  /**
    Internal.
  **/
  @:uproperty public var ColorModulate : unreal.FPlane;
  
  /**
    Zero-based actual dimensions X.
  **/
  @:uproperty public var SizeY : unreal.Int32;
  
  /**
    Don't bilinear filter.
  **/
  @:uproperty public var SizeX : unreal.Int32;
  
  /**
    Whether to center the text vertically (about CurY)
  **/
  @:uproperty public var bNoSmooth : Bool;
  
  /**
    Whether to center the text horizontally (about CurX)
  **/
  @:uproperty public var bCenterY : Bool;
  
  /**
    Color for drawing.
  **/
  @:uproperty public var bCenterX : Bool;
  
  /**
    Bottom right clipping region.
  **/
  @:uproperty public var DrawColor : unreal.FColor;
  
  /**
    Bottom right clipping region.
  **/
  @:uproperty public var ClipY : unreal.Float32;
  
  /**
    Origin for drawing in Y.
  **/
  @:uproperty public var ClipX : unreal.Float32;
  
  /**
    Origin for drawing in X.
  **/
  @:uproperty public var OrgY : unreal.Float32;
  
  /**
    Modifiable properties.
  **/
  @:uproperty public var OrgX : unreal.Float32;
  
  /**
    Draws a line on the Canvas.
    
    @param ScreenPositionA               Starting position of the line in screen space.
    @param ScreenPositionB               Ending position of the line in screen space.
    @param Thickness                             How many pixels thick this line should be.
    @param RenderColor                   Color to render the line.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_DrawLine(ScreenPositionA : unreal.FVector2D, ScreenPositionB : unreal.FVector2D, Thickness : unreal.Float32 = 1.000000, @:opt("(R=1.000000,G=1.000000,B=1.000000,A=1.000000)") RenderColor : unreal.FLinearColor) : Void;
  
  /**
    Draws a texture on the Canvas.
    
    @param RenderTexture                         Texture to use when rendering. If no texture is set then this will use the default white texture.
    @param ScreenPosition                        Screen space position to render the texture.
    @param ScreenSize                            Screen space size to render the texture.
    @param CoordinatePosition            Normalized UV starting coordinate to use when rendering the texture.
    @param CoordinateSize                        Normalized UV size coordinate to use when rendering the texture.
    @param RenderColor                           Color to use when rendering the texture.
    @param BlendMode                                     Blending mode to use when rendering the texture.
    @param Rotation                                      Rotation, in degrees, to render the texture.
    @param PivotPoint                            Normalized pivot point to use when rotating the texture.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_DrawTexture(RenderTexture : unreal.UTexture, ScreenPosition : unreal.FVector2D, ScreenSize : unreal.FVector2D, CoordinatePosition : unreal.FVector2D, @:opt("(X=1.000,Y=1.000)") CoordinateSize : unreal.FVector2D, @:opt("(R=1.000000,G=1.000000,B=1.000000,A=1.000000)") RenderColor : unreal.FLinearColor, BlendMode : unreal.EBlendMode = BLEND_Translucent, Rotation : unreal.Float32 = 0.000000, @:opt("(X=0.500,Y=0.500)") PivotPoint : unreal.FVector2D) : Void;
  
  /**
    Draws a material on the Canvas.
    
    @param RenderMaterial                        Material to use when rendering. Remember that only the emissive channel is able to be rendered as no lighting is performed when rendering to the Canvas.
    @param ScreenPosition                        Screen space position to render the texture.
    @param ScreenSize                            Screen space size to render the texture.
    @param CoordinatePosition            Normalized UV starting coordinate to use when rendering the texture.
    @param CoordinateSize                        Normalized UV size coordinate to use when rendering the texture.
    @param Rotation                                      Rotation, in degrees, to render the texture.
    @param PivotPoint                            Normalized pivot point to use when rotating the texture.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_DrawMaterial(RenderMaterial : unreal.UMaterialInterface, ScreenPosition : unreal.FVector2D, ScreenSize : unreal.FVector2D, CoordinatePosition : unreal.FVector2D, @:opt("(X=1.000,Y=1.000)") CoordinateSize : unreal.FVector2D, Rotation : unreal.Float32 = 0.000000, @:opt("(X=0.500,Y=0.500)") PivotPoint : unreal.FVector2D) : Void;
  
  /**
    Draws text on the Canvas.
    
    @param RenderFont                            Font to use when rendering the text. If this is null, then a default engine font is used.
    @param RenderText                            Text to render on the Canvas.
    @param ScreenPosition                        Screen space position to render the text.
    @param RenderColor                           Color to render the text.
    @param Kerning                                       Horizontal spacing adjustment to modify the spacing between each letter.
    @param ShadowColor                           Color to render the shadow of the text.
    @param ShadowOffset                          Pixel offset relative to the screen space position to render the shadow of the text.
    @param bCentreX                                      If true, then interpret the screen space position X coordinate as the center of the rendered text.
    @param bCentreY                                      If true, then interpret the screen space position Y coordinate as the center of the rendered text.
    @param bOutlined                                     If true, then the text should be rendered with an outline.
    @param OutlineColor                          Color to render the outline for the text.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_DrawText(RenderFont : unreal.UFont, RenderText : unreal.FString, ScreenPosition : unreal.FVector2D, @:opt("(X=1.000,Y=1.000)") Scale : unreal.FVector2D, @:opt("(R=1.000000,G=1.000000,B=1.000000,A=1.000000)") RenderColor : unreal.FLinearColor, Kerning : unreal.Float32 = 0.000000, @:opt("(R=0.000000,G=0.000000,B=0.000000,A=1.000000)") ShadowColor : unreal.FLinearColor, @:opt("(X=1.000,Y=1.000)") ShadowOffset : unreal.FVector2D, bCentreX : Bool = false, bCentreY : Bool = false, bOutlined : Bool = false, @:opt("(R=0.000000,G=0.000000,B=0.000000,A=1.000000)") OutlineColor : unreal.FLinearColor) : Void;
  
  /**
    Draws a 3x3 grid border with tiled frame and tiled interior on the Canvas.
    
    @param BorderTexture                         Texture to use for border.
    @param BackgroundTexture                     Texture to use for border background.
    @param LeftBorderTexture                     Texture to use for the tiling left border.
    @param RightBorderTexture            Texture to use for the tiling right border.
    @param TopBorderTexture                      Texture to use for the tiling top border.
    @param BottomBorderTexture           Texture to use for the tiling bottom border.
    @param ScreenPosition                        Screen space position to render the texture.
    @param ScreenSize                            Screen space size to render the texture.
    @param CoordinatePosition            Normalized UV starting coordinate to use when rendering the border texture.
    @param CoordinateSize                        Normalized UV size coordinate to use when rendering the border texture.
    @param RenderColor                           Color to tint the border.
    @param BorderScale                           Scale of the border.
    @param BackgroundScale                       Scale of the background.
    @param Rotation                                      Rotation, in degrees, to render the texture.
    @param PivotPoint                            Normalized pivot point to use when rotating the texture.
    @param CornerSize                            Frame corner size in percent of frame texture (should be < 0.5f).
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_DrawBorder(BorderTexture : unreal.UTexture, BackgroundTexture : unreal.UTexture, LeftBorderTexture : unreal.UTexture, RightBorderTexture : unreal.UTexture, TopBorderTexture : unreal.UTexture, BottomBorderTexture : unreal.UTexture, ScreenPosition : unreal.FVector2D, ScreenSize : unreal.FVector2D, CoordinatePosition : unreal.FVector2D, @:opt("(X=1.000,Y=1.000)") CoordinateSize : unreal.FVector2D, @:opt("(R=1.000000,G=1.000000,B=1.000000,A=1.000000)") RenderColor : unreal.FLinearColor, @:opt("(X=0.100,Y=0.100)") BorderScale : unreal.FVector2D, @:opt("(X=0.100,Y=0.100)") BackgroundScale : unreal.FVector2D, Rotation : unreal.Float32 = 0.000000, @:opt("(X=0.500,Y=0.500)") PivotPoint : unreal.FVector2D, CornerSize : unreal.FVector2D) : Void;
  
  /**
    Draws an unfilled box on the Canvas.
    
    @param ScreenPosition                        Screen space position to render the text.
    @param ScreenSize                            Screen space size to render the texture.
    @param Thickness                                     How many pixels thick the box lines should be.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_DrawBox(ScreenPosition : unreal.FVector2D, ScreenSize : unreal.FVector2D, Thickness : unreal.Float32 = 1.000000, @:opt("(R=1.000000,G=1.000000,B=1.000000,A=1.000000)") RenderColor : unreal.FLinearColor) : Void;
  
  /**
    Draws a set of triangles on the Canvas.
    
    @param RenderTexture                         Texture to use when rendering the triangles. If no texture is set, then the default white texture is used.
    @param Triangles                                     Triangles to render.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_DrawTriangle(RenderTexture : unreal.UTexture, Triangles : unreal.TArray<unreal.FCanvasUVTri>) : Void;
  
  /**
    Draws a set of triangles on the Canvas.
    
    @param RenderMaterial                        Material to use when rendering. Remember that only the emissive channel is able to be rendered as no lighting is performed when rendering to the Canvas.
    @param Triangles                                     Triangles to render.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_DrawMaterialTriangle(RenderMaterial : unreal.UMaterialInterface, Triangles : unreal.TArray<unreal.FCanvasUVTri>) : Void;
  
  /**
    Draws a polygon on the Canvas.
    
    @param RenderTexture                         Texture to use when rendering the triangles. If no texture is set, then the default white texture is used.
    @param ScreenPosition                        Screen space position to render the text.
    @param Radius                                        How large in pixels this polygon should be.
    @param NumberOfSides                         How many sides this polygon should have. This should be above or equal to three.
    @param RenderColor                           Color to tint the polygon.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_DrawPolygon(RenderTexture : unreal.UTexture, ScreenPosition : unreal.FVector2D, @:opt("(X=1.000,Y=1.000)") Radius : unreal.FVector2D, NumberOfSides : unreal.Int32 = 3, @:opt("(R=1.000000,G=1.000000,B=1.000000,A=1.000000)") RenderColor : unreal.FLinearColor) : Void;
  
  /**
    Performs a projection of a world space coordinates using the projection matrix set up for the Canvas.
    
    @param WorldLocation                         World space location to project onto the Canvas rendering plane.
    @return                                                      Returns a vector where X, Y defines a screen space position representing the world space location.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_Project(WorldLocation : unreal.FVector) : unreal.FVector;
  
  /**
    Performs a deprojection of a screen space coordinate using the projection matrix set up for the Canvas.
    
    @param ScreenPosition                        Screen space position to deproject to the World.
    @param WorldOrigin                           Vector which is the world position of the screen space position.
    @param WorldDirection                        Vector which can be used in a trace to determine what is "behind" the screen space position. Useful for object picking.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_Deproject(ScreenPosition : unreal.FVector2D, WorldOrigin : unreal.PRef<unreal.FVector>, WorldDirection : unreal.PRef<unreal.FVector>) : Void;
  
  /**
    Returns the wrapped text size in screen space coordinates.
    
    @param RenderFont                            Font to use when determining the size of the text. If this is null, then a default engine font is used.
    @param RenderText                            Text to determine the size of.
    @return                                                      Returns the screen space size of the text.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_StrLen(RenderFont : unreal.UFont, RenderText : unreal.FString) : unreal.FVector2D;
  
  /**
    Returns the clipped text size in screen space coordinates.
    
    @param RenderFont                            Font to use when determining the size of the text. If this is null, then a default engine font is used.
    @param RenderText                            Text to determine the size of.
    @param Scale                                         Scale of the font to use when determining the size of the text.
    @return                                                      Returns the screen space size of the text.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_TextSize(RenderFont : unreal.UFont, RenderText : unreal.FString, @:opt("(X=1.000,Y=1.000)") Scale : unreal.FVector2D) : unreal.FVector2D;
  
}

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
package unreal.slatecore;

/**
  Represents the appearance of an FScrollBorderStyle
**/
@:umodule("SlateCore")
@:glueCppIncludes("Public/Styling/SlateTypes.h")
@:uextern @:ustruct extern class FScrollBorderStyle extends unreal.slatecore.FSlateWidgetStyle {
  
  /**
    Brush used to draw the bottom shadow of a scrollborder
  **/
  @:uproperty public var BottomShadowBrush : unreal.slatecore.FSlateBrush;
  
  /**
    Brush used to draw the top shadow of a scrollborder
  **/
  @:uproperty public var TopShadowBrush : unreal.slatecore.FSlateBrush;
  
}

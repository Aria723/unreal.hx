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
  Information used in font rendering
**/
@:glueCppIncludes("Classes/Engine/EngineTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FFontRenderInfo {
  
  /**
    Depth field glow parameters (only usable if font was imported with a depth field)
  **/
  @:uproperty public var GlowInfo : unreal.FDepthFieldGlowInfo;
  
  /**
    Whether to turn on shadowing
  **/
  @:uproperty public var bEnableShadow : Bool;
  
  /**
    Whether to clip text
  **/
  @:uproperty public var bClipText : Bool;
  
}

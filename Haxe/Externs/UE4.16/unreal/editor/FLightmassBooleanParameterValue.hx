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
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.editor;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Boolean parameter value
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Editor/UnrealEdTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FLightmassBooleanParameterValue extends unreal.editor.FLightmassParameterValue {
  
  /**
    The boolean value to override the parent value with
  **/
  @:uproperty public var ParameterValue : Bool;
  
}
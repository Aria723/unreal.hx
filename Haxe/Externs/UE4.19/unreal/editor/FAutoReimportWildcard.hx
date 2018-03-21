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
package unreal.editor;

/**
  A filter used by the auto reimport manager to explicitly include/exclude files matching the specified wildcard
**/
@:umodule("UnrealEd")
@:glueCppIncludes("Classes/Settings/EditorLoadingSavingSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAutoReimportWildcard {
  
  /**
    When true, files that match this wildcard will be included (if it doesn't fail any other filters), when false, matches will be excluded from the reimporter
  **/
  @:uproperty public var bInclude : Bool;
  
  /**
    The wildcard filter as a string. Files that match this wildcard will be included/excluded according to the bInclude member
  **/
  @:uproperty public var Wildcard : unreal.FString;
  
}
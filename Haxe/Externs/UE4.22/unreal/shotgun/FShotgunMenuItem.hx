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
package unreal.shotgun;

@:umodule("Shotgun")
@:glueCppIncludes("Private/ShotgunEngine.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FShotgunMenuItem {
  
  /**
    Menu item type to help interpret the command
  **/
  @:uproperty public var Type : unreal.FString;
  
  /**
    Description text for the tooltip
  **/
  @:uproperty public var Description : unreal.FString;
  
  /**
    Text to display in the menu
  **/
  @:uproperty public var Title : unreal.FString;
  
  /**
    Command name for internal use
  **/
  @:uproperty public var Name : unreal.FString;
  
}

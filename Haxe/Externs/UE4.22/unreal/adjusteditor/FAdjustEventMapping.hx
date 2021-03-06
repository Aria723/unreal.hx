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
package unreal.adjusteditor;

/**
  Holds the event name and corresponding token from Adjust dashboard.
**/
@:umodule("AdjustEditor")
@:glueCppIncludes("Classes/AdjustSettings.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FAdjustEventMapping {
  
  /**
    The token of the corresponding event, generated by the Adjust dashboard.
  **/
  @:uproperty public var Token : unreal.FString;
  
  /**
    The event name (the one passed in to RecordEvent calls).
  **/
  @:uproperty public var Name : unreal.FString;
  
}

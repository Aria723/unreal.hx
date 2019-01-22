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
package unreal.onlinesubsystem;

/**
  Holds a name to class name mapping for adding the named interfaces automatically
**/
@:umodule("OnlineSubsystem")
@:glueCppIncludes("Public/NamedInterfaces.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FNamedInterfaceDef {
  
  /**
    The class to load and create for the named interface
  **/
  @:uproperty public var InterfaceClassName : unreal.FString;
  
  /**
    The name to bind this object to
  **/
  @:uproperty public var InterfaceName : unreal.FName;
  
}
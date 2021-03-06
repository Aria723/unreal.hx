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
  Handles attachment replication to clients. Movement replication will not happen while AttachParent is non-nullptr
**/
@:glueCppIncludes("Classes/Engine/EngineTypes.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FRepAttachment {
  @:uproperty public var AttachComponent : unreal.USceneComponent;
  @:uproperty public var AttachSocket : unreal.FName;
  @:uproperty public var RotationOffset : unreal.FRotator;
  @:uproperty public var RelativeScale3D : unreal.FVector_NetQuantize100;
  @:uproperty public var LocationOffset : unreal.FVector_NetQuantize100;
  @:uproperty public var AttachParent : unreal.AActor;
  
}

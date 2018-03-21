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
  Types of demo play failures broadcast from the engine
**/
@:glueCppIncludes("Classes/Engine/EngineBaseTypes.h")
@:uname("EDemoPlayFailure.Type")
@:uextern @:uenum extern enum EDemoPlayFailure {
  
  /**
    A Generic failure.
  **/
  Generic;
  
  /**
    Demo was not found.
  **/
  DemoNotFound;
  
  /**
    Demo is corrupt.
  **/
  Corrupt;
  
}
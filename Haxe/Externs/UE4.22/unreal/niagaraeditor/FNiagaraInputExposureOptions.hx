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
package unreal.niagaraeditor;

@:umodule("NiagaraEditor")
@:glueCppIncludes("Public/NiagaraNodeInput.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FNiagaraInputExposureOptions {
  
  /**
    If this input should be hidden in the advanced pin section of it's caller.
  **/
  @:uproperty public var bHidden : Bool;
  
  /**
    If this input can auto-bind to system parameters and emitter attributes. Will never auto bind to custom parameters.
  **/
  @:uproperty public var bCanAutoBind : Bool;
  
  /**
    If this input is required to be bound.
  **/
  @:uproperty public var bRequired : Bool;
  
  /**
    If this input is exposed to it's caller.
  **/
  @:uproperty public var bExposed : Bool;
  
}

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

@:glueCppIncludes("Particles/ParticleModule.h")
@:uextern @:uclass extern class UParticleModule extends unreal.UObject {
  #if WITH_EDITORONLY_DATA
  
  /**
    The color to draw the modules curves in the curve editor.
        If bCurvesAsColor is true, it overrides this value.
  **/
  @:uproperty public var ModuleEditorColor : unreal.FColor;
  #end // WITH_EDITORONLY_DATA
  
  /**
    The LOD levels this module is present in.
    Bit-flags are used to indicate validity for a given LOD level.
    For example, if
            ((1 << Level) & LODValidity) != 0
    then the module is used in that LOD.
  **/
  @:uproperty public var LODValidity : unreal.UInt8;
  
  /**
    If true, the module should be told when looping
  **/
  @:uproperty public var bRequiresLoopingNotification : Bool;
  
  /**
    If true, the module supports RandomSeed setting
  **/
  @:uproperty public var bSupportsRandomSeed : Bool;
  
  /**
    If true, this flag indicates that auto-generation for LOD will result in
    an exact duplicate of the module, regardless of the percentage.
    If false, it will result in a module with different settings.
  **/
  @:uproperty public var LODDuplicate : Bool;
  
  /**
    If true, the module has had editing enabled on it
  **/
  @:uproperty public var bEditable : Bool;
  
  /**
    If true, the module is enabled
  **/
  @:uproperty public var bEnabled : Bool;
  
  /**
    If true, the module supports rendering a 3D visualization helper
  **/
  @:uproperty public var bSupported3DDrawMode : Bool;
  
  /**
    If true, the module should render its 3D visualization helper
  **/
  @:uproperty public var b3DDrawMode : Bool;
  
  /**
    If true, the module displays FVector curves as colors
  **/
  @:uproperty public var bCurvesAsColor : Bool;
  
  /**
    If true, the module performs operations on particles during update and/or final update for GPU emitters
  **/
  @:uproperty public var bUpdateForGPUEmitter : Bool;
  
  /**
    If true, the module performs operations on particles during final update
  **/
  @:uproperty public var bFinalUpdateModule : Bool;
  
  /**
    If true, the module performs operations on particles during Updating
  **/
  @:uproperty public var bUpdateModule : Bool;
  
  /**
    If true, the module performs operations on particles during Spawning
  **/
  @:uproperty public var bSpawnModule : Bool;
  
}
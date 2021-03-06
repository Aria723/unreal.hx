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
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:glueCppIncludes("Matinee/InterpTrackParticleReplay.h")
@:uextern @:uclass extern class UInterpTrackParticleReplay extends unreal.UInterpTrack {
  #if WITH_EDITORONLY_DATA
  
  /**
    Current replay fixed time quantum between frames (one over frame rate)
  **/
  @:uproperty public var FixedTimeStep : unreal.Float32;
  
  /**
    True in the editor if track should be used to capture replay frames instead of play them back
  **/
  @:uproperty public var bIsCapturingReplay : Bool;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Array of keys
  **/
  @:uproperty public var TrackKeys : unreal.TArray<unreal.FParticleReplayTrackKey>;
  
}

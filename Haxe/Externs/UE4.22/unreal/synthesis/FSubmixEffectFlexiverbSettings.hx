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
package unreal.synthesis;

@:umodule("Synthesis")
@:glueCppIncludes("Classes/SubmixEffects/SubmixEffectFlexiverb.h")
@:uextern @:ustruct extern class FSubmixEffectFlexiverbSettings {
  @:uproperty public var Complexity : unreal.Int32;
  
  /**
    Room Dampening - 0.0 < 0.85 < 1.0 - Frequency at which the room dampens.
  **/
  @:uproperty public var RoomDampening : unreal.Float32;
  
  /**
    Time in seconds it will take for the impulse response to decay to -60 dB.
  **/
  @:uproperty public var DecayTime : unreal.Float32;
  
  /**
    PreDelay - 0.01 < 10.0 < 40.0 - Amount of delay to the first echo in milliseconds.
  **/
  @:uproperty public var PreDelay : unreal.Float32;
  
}

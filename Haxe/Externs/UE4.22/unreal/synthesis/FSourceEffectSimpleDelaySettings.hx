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
@:glueCppIncludes("Classes/SourceEffects/SourceEffectSimpleDelay.h")
@:uextern @:ustruct extern class FSourceEffectSimpleDelaySettings {
  
  /**
    Whether or not to delay the audio based on the distance to the listener or use manual delay
  **/
  @:uproperty public var bDelayBasedOnDistance : Bool;
  
  /**
    Amount to feedback into the delay line (because why not)
  **/
  @:uproperty public var Feedback : unreal.Float32;
  
  /**
    Gain stage on wet (delayed) signal
  **/
  @:uproperty public var WetAmount : unreal.Float32;
  
  /**
    Gain stage on dry (non-delayed signal)
  **/
  @:uproperty public var DryAmount : unreal.Float32;
  
  /**
    Delay amount in seconds
  **/
  @:uproperty public var DelayAmount : unreal.Float32;
  
  /**
    Speed of sound in meters per second when using distance-based delay
  **/
  @:uproperty public var SpeedOfSound : unreal.Float32;
  
}

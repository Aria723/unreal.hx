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
  Timed Particle Effect Notify
  Allows a looping particle effect to be played in an animation that will activate
  at the beginning of the notify and deactivate at the end.
**/
@:glueCppIncludes("Animation/AnimNotifies/AnimNotifyState_TimedParticleEffect.h")
@:uextern @:uclass extern class UAnimNotifyState_TimedParticleEffect extends unreal.UAnimNotifyState {
  #if WITH_EDITORONLY_DATA
  @:uproperty public var PreviousSocketNames : unreal.TArray<unreal.FName>;
  
  /**
    The following arrays are used to handle property changes during a state. Because we can't
    store any stateful data here we can't know which emitter is ours. The best metric we have
    is an emitter on our Mesh Component with the same template and socket name we have defined.
    Because these can change at any time we need to track previous versions when we are in an
    editor build. Refactor when stateful data is possible, tracking our component instead.
  **/
  @:uproperty public var PreviousPSTemplates : unreal.TArray<unreal.UParticleSystem>;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Whether the particle system should be immediately destroyed at the end of the notify state or be allowed to finish
  **/
  @:uproperty public var bDestroyAtEnd : Bool;
  
  /**
    Rotation offset from the socket or bone for the particle system
  **/
  @:uproperty public var RotationOffset : unreal.FRotator;
  
  /**
    Offset from the socket or bone to place the particle system
  **/
  @:uproperty public var LocationOffset : unreal.FVector;
  
  /**
    The socket or bone to attach the system to
  **/
  @:uproperty public var SocketName : unreal.FName;
  
  /**
    The particle system to spawn for the notify state
  **/
  @:uproperty public var PSTemplate : unreal.UParticleSystem;
  
}

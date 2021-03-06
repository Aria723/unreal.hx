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
package unreal.gameplayabilities;

/**
  Wait for targeting actor (spawned from parameter) to provide data. Can be set not to end upon outputting data. Can be ended by task name.
  
  WARNING: These actors are spawned once per ability activation and in their default form are not very efficient
  For most games you will need to subclass and heavily modify this actor, or you will want to implement similar functions in a game-specific actor or blueprint to avoid actor spawn costs
  This task is not well tested by internal games, but it is a useful class to look at to learn how target replication occurs
**/
@:umodule("GameplayAbilities")
@:glueCppIncludes("Abilities/Tasks/AbilityTask_WaitTargetData.h")
@:uextern @:uclass extern class UAbilityTask_WaitTargetData extends unreal.gameplayabilities.UAbilityTask {
  
  /**
    The TargetActor that we spawned
  **/
  @:uproperty private var TargetActor : unreal.gameplayabilities.AGameplayAbilityTargetActor;
  @:uproperty private var TargetClass : unreal.TSubclassOf<unreal.gameplayabilities.AGameplayAbilityTargetActor>;
  @:uproperty public var Cancelled : unreal.gameplayabilities.FWaitTargetDataDelegate;
  @:uproperty public var ValidData : unreal.gameplayabilities.FWaitTargetDataDelegate;
  @:ufunction @:final public function OnTargetDataReplicatedCallback(Data : unreal.Const<unreal.PRef<unreal.gameplayabilities.FGameplayAbilityTargetDataHandle>>, ActivationTag : unreal.gameplaytags.FGameplayTag) : Void;
  @:ufunction @:final public function OnTargetDataReplicatedCancelledCallback() : Void;
  @:ufunction @:final public function OnTargetDataReadyCallback(Data : unreal.Const<unreal.PRef<unreal.gameplayabilities.FGameplayAbilityTargetDataHandle>>) : Void;
  @:ufunction @:final public function OnTargetDataCancelledCallback(Data : unreal.Const<unreal.PRef<unreal.gameplayabilities.FGameplayAbilityTargetDataHandle>>) : Void;
  
  /**
    Spawns target actor and waits for it to return valid data or to be canceled.
  **/
  @:ufunction(BlueprintCallable) static public function WaitTargetData(OwningAbility : unreal.gameplayabilities.UGameplayAbility, TaskInstanceName : unreal.FName, ConfirmationType : unreal.gameplayabilities.EGameplayTargetingConfirmation, Class : unreal.TSubclassOf<unreal.gameplayabilities.AGameplayAbilityTargetActor>) : unreal.gameplayabilities.UAbilityTask_WaitTargetData;
  
  /**
    Uses specified target actor and waits for it to return valid data or to be canceled.
  **/
  @:ufunction(BlueprintCallable) static public function WaitTargetDataUsingActor(OwningAbility : unreal.gameplayabilities.UGameplayAbility, TaskInstanceName : unreal.FName, ConfirmationType : unreal.gameplayabilities.EGameplayTargetingConfirmation, TargetActor : unreal.gameplayabilities.AGameplayAbilityTargetActor) : unreal.gameplayabilities.UAbilityTask_WaitTargetData;
  @:ufunction(BlueprintCallable) @:final public function FinishSpawningActor(OwningAbility : unreal.gameplayabilities.UGameplayAbility, SpawnedActor : unreal.gameplayabilities.AGameplayAbilityTargetActor) : Void;
  
}

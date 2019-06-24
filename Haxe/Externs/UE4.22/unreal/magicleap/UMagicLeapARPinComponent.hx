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
package unreal.magicleap;

/**
  Component to make content persist at locations in the real world.
**/
@:umodule("MagicLeap")
@:glueCppIncludes("MagicLeapARPinComponent.h")
@:uextern @:uclass extern class UMagicLeapARPinComponent extends unreal.USceneComponent {
  
  /**
    Pin given SceneComponent to the closest AR Pin in real-world.
    OnPersistentEntityPinned event will be fired when a suitable AR Pin is found for this component.
    The component's transform will then be locked. App needs to call UnPin() if it wants to move the component again.
    @param ComponentToPin SceneComponent to pin to the world. Pass in 'this' component if app is using 'OnlyOnDataRestoration' or 'Always' AutoPinType.
    @return true if the component was accepted to be pinned, false otherwise.
  **/
  @:ufunction(BlueprintCallable) @:final public function PinSceneComponent(ComponentToPin : unreal.USceneComponent) : Bool;
  
  /**
    Pin given Actor to the closest AR Pin in real-world.
    OnPersistentEntityPinned event will be fired when a suitable AR Pin is found for this Actor.
    The Actor's transform will then be locked. App needs to call UnPin() if it wants to move the Actor again.
    @param ActorToPin Actor to pin to the world. Pass in this component's owner if app is using 'OnlyOnDataRestoration' or 'Always' AutoPinType.
    @return true if the Actor was accepted to be pinned, false otherwise.
  **/
  @:ufunction(BlueprintCallable) @:final public function PinActor(ActorToPin : unreal.AActor) : Bool;
  
  /**
    Detach or un-pin the currently pinned entity (component or actor) from the real-world.
    Call this if you want to change the transform of a pinned entity.
    Note that if you still want your content to persist, you will have to call PinSceneComponent() or PinActor() before EndPlay().
  **/
  @:ufunction(BlueprintCallable) @:final public function UnPin() : Void;
  
  /**
    True if an entity (component or actor) is currently pinned by this component.
    If true, the entity's transform will be locked. App needs to call UnPin() if it wants to move it again.
    If false, and you still want your content to persist, you will have to call PinSceneComponent() or PinActor() before EndPlay().
    @return True if an entity (component or actor) is currently pinned by this component.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function IsPinned() : Bool;
  
  /**
    True if the AR Pin for the unique ID ObjectUID was restored from the app's local storage or was repliated over network.
    Implies if content was already pinned earlier. Does not imply if that restored Pin is available in the current environment.
    @return True if the Pin data was restored from local storage or network.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function PinRestoredOrSynced() : Bool;
  
  /**
    Get the ID of the Pin the entity (component or actor) is currently pinned to.
    @param PinID Output param for the ID of the Pin.
    @return True if an entity is currently pinned by this component and the output param is successfully populated.
  **/
  @:ufunction(BlueprintCallable) @:final public function GetPinnedPinID(PinID : unreal.PRef<unreal.FGuid>) : Bool;
  
  /**
    Fired when an entity is successfully pinned by this component.
  **/
  @:uproperty public var OnPersistentEntityPinned : unreal.magicleap.FPersistentEntityPinned;
  
  /**
    Pin this component's owner actor instead of just the component itself. Relevant only when using 'OnlyOnDataRestoration' or 'Always' as AutoPinType.
  **/
  @:uproperty public var bShouldPinActor : Bool;
  
  /**
    Mode for automatically pinning this component or it's owner actor to real-world.
  **/
  @:uproperty public var AutoPinType : unreal.magicleap.EAutoPinType;
  
  /**
    Unique ID for this component to save the meta data for the Pin and make content persistent.
    This name has to be unique across all instances of the MagicLeapARPinComponent class.
    If empty, the name of the owner actor will be used.
  **/
  @:uproperty public var ObjectUID : unreal.FString;
  
}
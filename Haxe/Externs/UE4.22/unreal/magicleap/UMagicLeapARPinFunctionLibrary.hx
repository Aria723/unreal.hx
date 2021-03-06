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
  Direct API interface for the Magic Leap Persistent AR Pin tracker system.
**/
@:umodule("MagicLeap")
@:glueCppIncludes("MagicLeapARPinComponent.h")
@:uextern @:uclass extern class UMagicLeapARPinFunctionLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Returns the count of currently available AR Pins.
    @param Count Output param for number of currently available AR Pins. Valid only if return value is EPassableWorldError::None.
    @return Error code representing specific success or failure cases.
  **/
  @:ufunction(BlueprintCallable) static public function GetNumAvailableARPins(Count : unreal.Int32) : unreal.magicleap.EPassableWorldError;
  
  /**
    Returns all the AR Pins currently available.
    @param NumRequested Max number of AR Pins to query. Pass in a negative integer to get all available Pins.
    @param Pins Output array containing IDs of the found Pins. Valid only if return value is EPassableWorldError::None.
    @return Error code representing specific success or failure cases.
  **/
  @:ufunction(BlueprintCallable) static public function GetAvailableARPins(NumRequested : unreal.Int32, Pins : unreal.PRef<unreal.TArray<unreal.FGuid>>) : unreal.magicleap.EPassableWorldError;
  
  /**
    Returns the Pin closest to the target point passed in.
    @param SearchPoint Position, in world space, to search the closest Pin to.
    @param PinID Output param for the ID of the closest Pin. Valid only if return value is EPassableWorldError::None.
    @return Error code representing specific success or failure cases.
  **/
  @:ufunction(BlueprintCallable) static public function GetClosestARPin(SearchPoint : unreal.Const<unreal.PRef<unreal.FVector>>, PinID : unreal.PRef<unreal.FGuid>) : unreal.magicleap.EPassableWorldError;
  
  /**
    Returns the world position & orientation of the requested Pin.
    @param PinID ID of the Pin to get the position and orientation for.
    @param Position Output param for the world position of the Pin. Valid only if return value is true.
    @param Orientation Output param for the world orientation of the Pin. Valid only if return value is true.
    @param PinFoundInEnvironment Output param for indicating ig the requested Pin was found user's current environment or not.
    @return true if the PinID was valid and the position & orientation were successfully retrieved.
  **/
  @:ufunction(BlueprintCallable) static public function GetARPinPositionAndOrientation(PinID : unreal.Const<unreal.PRef<unreal.FGuid>>, Position : unreal.PRef<unreal.FVector>, Orientation : unreal.PRef<unreal.FRotator>, PinFoundInEnvironment : Bool) : Bool;
  
}

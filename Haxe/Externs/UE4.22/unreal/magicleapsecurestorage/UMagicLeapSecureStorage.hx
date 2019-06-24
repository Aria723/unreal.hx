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
package unreal.magicleapsecurestorage;

/**
  Function library for the Magic Leap Secure Storage API.
  Currently supports bool, uint8, int32, float, FString, FVector, FRotator and FTransform via Blueprints.
  Provides a template function for any non specialized types to be used via C++.
  TODO: Support TArray and a generic USTRUCT.
**/
@:umodule("MagicLeapSecureStorage")
@:glueCppIncludes("MagicLeapSecureStorage.h")
@:uextern @:uclass extern class UMagicLeapSecureStorage extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Stores the boolean under the specified key. An existing key would be overwritten.
    @param   Key String key associated with the data.
    @param   DataToStore The data to store.
    @return  True if the data was stored successfully, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function PutSecureBool(Key : unreal.FString, DataToStore : Bool) : Bool;
  
  /**
    Stores the byte (uint8) under the specified key. An existing key would be overwritten.
    @param   Key String key associated with the data.
    @param   DataToStore The data to store.
    @return  True if the data was stored successfully, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function PutSecureByte(Key : unreal.FString, DataToStore : unreal.UInt8) : Bool;
  
  /**
    Stores the integer (int32) under the specified key. An existing key would be overwritten.
    @param   Key String key associated with the data.
    @param   DataToStore The data to store.
    @return  True if the data was stored successfully, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function PutSecureInt(Key : unreal.FString, DataToStore : unreal.Int32) : Bool;
  
  /**
    Stores the float under the specified key. An existing key would be overwritten.
    @param   Key String key associated with the data.
    @param   DataToStore The data to store.
    @return  True if the data was stored successfully, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function PutSecureFloat(Key : unreal.FString, DataToStore : unreal.Float32) : Bool;
  
  /**
    Stores the string under the specified key. An existing key would be overwritten.
    @param   Key String key associated with the data.
    @param   DataToStore The data to store.
    @return  True if the data was stored successfully, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function PutSecureString(Key : unreal.FString, DataToStore : unreal.FString) : Bool;
  
  /**
    Stores the vector under the specified key. An existing key would be overwritten.
    @param   Key String key associated with the data.
    @param   DataToStore The data to store.
    @return  True if the data was stored successfully, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function PutSecureVector(Key : unreal.FString, DataToStore : unreal.Const<unreal.PRef<unreal.FVector>>) : Bool;
  
  /**
    Stores the rotator under the specified key. An existing key would be overwritten.
    @param   Key String key associated with the data.
    @param   DataToStore The data to store.
    @return  True if the data was stored successfully, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function PutSecureRotator(Key : unreal.FString, DataToStore : unreal.Const<unreal.PRef<unreal.FRotator>>) : Bool;
  
  /**
    Stores the transform under the specified key. An existing key would be overwritten.
    @param   Key String key associated with the data.
    @param   DataToStore The data to store.
    @return  True if the data was stored successfully, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function PutSecureTransform(Key : unreal.FString, DataToStore : unreal.Const<unreal.PRef<unreal.FTransform>>) : Bool;
  
  /**
    Retrieves the boolean associated with the specified key.
    @param   Key The string key to look for.
    @param   DataToRetrieve Reference to the variable that will be populated with the stored data.
    @return  True if the key was found and output parameter was successfully populated with the data, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function GetSecureBool(Key : unreal.FString, DataToRetrieve : Bool) : Bool;
  
  /**
    Retrieves the byte (uint8) associated with the specified key.
    @param   Key The string key to look for.
    @param   DataToRetrieve Reference to the variable that will be populated with the stored data.
    @return  True if the key was found and output parameter was successfully populated with the data, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function GetSecureByte(Key : unreal.FString, DataToRetrieve : unreal.UInt8) : Bool;
  
  /**
    Retrieves the integer (int32) associated with the specified key.
    @param   Key The string key to look for.
    @param   DataToRetrieve Reference to the variable that will be populated with the stored data.
    @return  True if the key was found and output parameter was successfully populated with the data, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function GetSecureInt(Key : unreal.FString, DataToRetrieve : unreal.Int32) : Bool;
  
  /**
    Retrieves the float associated with the specified key.
    @param   Key The string key to look for.
    @param   DataToRetrieve Reference to the variable that will be populated with the stored data.
    @return  True if the key was found and output parameter was successfully populated with the data, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function GetSecureFloat(Key : unreal.FString, DataToRetrieve : unreal.Float32) : Bool;
  
  /**
    Retrieves the string associated with the specified key.
    @param   Key The string key to look for.
    @param   DataToRetrieve Reference to the variable that will be populated with the stored data.
    @return  True if the key was found and output parameter was successfully populated with the data, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function GetSecureString(Key : unreal.FString, DataToRetrieve : unreal.PRef<unreal.FString>) : Bool;
  
  /**
    Retrieves the vector associated with the specified key.
    @param   Key The string key to look for.
    @param   DataToRetrieve Reference to the variable that will be populated with the stored data.
    @return  True if the key was found and output parameter was successfully populated with the data, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function GetSecureVector(Key : unreal.FString, DataToRetrieve : unreal.PRef<unreal.FVector>) : Bool;
  
  /**
    Retrieves the rotator associated with the specified key.
    @param   Key The string key to look for.
    @param   DataToRetrieve Reference to the variable that will be populated with the stored data.
    @return  True if the key was found and output parameter was successfully populated with the data, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function GetSecureRotator(Key : unreal.FString, DataToRetrieve : unreal.PRef<unreal.FRotator>) : Bool;
  
  /**
    Retrieves the transform associated with the specified key.
    @param   Key The string key to look for.
    @param   DataToRetrieve Reference to the variable that will be populated with the stored data.
    @return  True if the key was found and output parameter was successfully populated with the data, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function GetSecureTransform(Key : unreal.FString, DataToRetrieve : unreal.PRef<unreal.FTransform>) : Bool;
  
  /**
    Deletes the data associated with the specified key.
    @param   Key The string key of the data to delete.
    @return  True if the data was deleted successfully or did not exist altogether, false otherwise.
  **/
  @:ufunction(BlueprintCallable) static public function DeleteSecureData(Key : unreal.FString) : Bool;
  
}
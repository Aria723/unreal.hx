/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.blueprintnativecodegen;


/**
  UBlueprintNativeCodeGenConfig
**/
@:umodule("BlueprintNativeCodeGen")
@:glueCppIncludes("BlueprintNativeCodeGenModule.h")
@:uextern extern class UBlueprintNativeCodeGenConfig extends unreal.UObject {
  public var ExcludedBlueprintTypes : unreal.TArray<unreal.FString>;
  public var ExcludedAssetTypes : unreal.TArray<unreal.FString>;
  public var PackagesToNeverConvert : unreal.TArray<unreal.FString>;
  
}
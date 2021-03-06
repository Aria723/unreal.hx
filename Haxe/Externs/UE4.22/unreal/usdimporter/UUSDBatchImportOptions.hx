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
package unreal.usdimporter;

/**
  WARNING: This type was not defined as DLL export on its declaration. Because of that, some of its methods are inaccessible
  
  
**/
@:umodule("USDImporter")
@:glueCppIncludes("Private/USDImportOptions.h")
@:noClass @:uextern @:uclass extern class UUSDBatchImportOptions extends unreal.usdimporter.UUSDImportOptions {
  @:uproperty public var SubTasks : unreal.TArray<unreal.usdimporter.UUSDBatchImportOptionsSubTask>;
  
  /**
    This setting determines what to do if more than one USD prim is found with the same name.  If this setting is true a unique name will be generated and a unique asset will be imported
    If this is false, the first asset found is generated. Assets will be reused when spawning actors into the world.
  **/
  @:uproperty public var bGenerateUniqueMeshes : Bool;
  
  /**
    What should happen with existing assets
  **/
  @:uproperty public var ExistingAssetPolicy : unreal.usdimporter.EExistingAssetPolicy;
  
  /**
    The path where new assets are imported
  **/
  @:uproperty public var PathForAssets : unreal.FDirectoryPath;
  
  /**
    Whether or not to import mesh geometry or to just spawn actors using existing meshes
  **/
  @:uproperty public var bImportMeshes : Bool;
  
}

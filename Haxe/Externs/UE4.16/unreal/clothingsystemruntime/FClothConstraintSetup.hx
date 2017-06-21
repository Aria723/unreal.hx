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
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal.clothingsystemruntime;


/**
  WARNING: This type is defined as NoExport by UHT. It will be empty because of it
  
  Container for a constraint setup, these can be horizontal, vertical, shear and bend
**/
@:umodule("ClothingSystemRuntime")
@:glueCppIncludes("Assets/ClothingAsset.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FClothConstraintSetup {
  
  /**
    The hard limit on how far this constraint can compress
  **/
  @:uproperty public var CompressionLimit : unreal.Float32;
  
  /**
    The hard limit on how far this constarint can stretch
  **/
  @:uproperty public var StretchLimit : unreal.Float32;
  
  /**
    A multiplier affecting the above value
  **/
  @:uproperty public var StiffnessMultiplier : unreal.Float32;
  
  /**
    How stiff this constraint is, this affects how closely it will follow the desired position
  **/
  @:uproperty public var Stiffness : unreal.Float32;
  
}
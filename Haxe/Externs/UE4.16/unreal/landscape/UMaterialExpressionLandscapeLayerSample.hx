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
package unreal.landscape;

@:umodule("Landscape")
@:glueCppIncludes("Materials/MaterialExpressionLandscapeLayerSample.h")
@:uextern @:uclass extern class UMaterialExpressionLandscapeLayerSample extends unreal.UMaterialExpression {
  
  /**
    GUID that should be unique within the material, this is used for parameter renaming.
  **/
  @:uproperty public var ExpressionGUID : unreal.FGuid;
  @:uproperty public var PreviewWeight : unreal.Float32;
  @:uproperty public var ParameterName : unreal.FName;
  
}
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
package unreal.composure;

/**
  In engine post process based pass.
**/
@:umodule("Composure")
@:glueCppIncludes("ComposurePostProcessPass.h")
@:uextern @:uclass extern class UComposurePostProcessPass extends unreal.USceneComponent {
  
  /**
    Sets a custom setup post process material. The material location must be set at BeforeTranslucency.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetSetupMaterial(Material : unreal.UMaterialInterface) : Void;
  
  /**
    Gets current setup material.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetSetupMaterial() : unreal.UMaterialInterface;
  
  /**
    Gets current output render target.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetOutputRenderTarget() : unreal.UTextureRenderTarget2D;
  
  /**
    Sets current output render target.
  **/
  @:ufunction(BlueprintCallable) @:final public function SetOutputRenderTarget(RenderTarget : unreal.UTextureRenderTarget2D) : Void;
  
  /**
    Internal material that replace the tonemapper to output linear color space.
  **/
  @:uproperty private var TonemapperReplacement : unreal.UMaterialInterface;
  
  /**
    Setup post process material.
  **/
  @:uproperty private var SetupMaterial : unreal.UMaterialInterface;
  
  /**
    Blendable interface to intercept the OverrideBlendableSettings.
  **/
  @:uproperty private var BlendableInterface : unreal.composure.UComposurePostProcessBlendable;
  
  /**
    Underlying scene capture.
  **/
  @:uproperty private var SceneCapture : unreal.USceneCaptureComponent2D;
  
}
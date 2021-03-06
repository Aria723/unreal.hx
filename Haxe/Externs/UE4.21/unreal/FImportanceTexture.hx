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
  Texture processed for importance sampling
  Holds marginal PDF of the rows, as well as the PDF of each row
**/
@:glueCppIncludes("Classes/Kismet/ImportanceSamplingLibrary.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FImportanceTexture {
  
  /**
    Original importance weight for Break function
  **/
  @:uproperty public var Weighting : unreal.EImportanceWeight;
  
  /**
    Original texture object for Break function
  **/
  @:uproperty public var Texture : unreal.TWeakObjectPtr<unreal.UTexture2D>;
  
  /**
    packed copy of MIP level data for filtered sampling (capped to 1024x1024)
    local copy seems better than allocating and copying the same data temporarily for each sample
  **/
  @:uproperty public var TextureData : unreal.TArray<unreal.FColor>;
  
  /**
    Unnormalized cumulative probability of each pixel in a row (Size.Y row CDFs of Size.X+1)
    First entry of each row is zero, final entry in each row is the CDF normalization factor for that row
  **/
  @:uproperty public var ConditionalCDF : unreal.TArray<unreal.Float32>;
  
  /**
    Unnormalized cumulative density of the image by rows (Size.Y+1)
    First entry is zero, final entry is the CDF normalization factor
  **/
  @:uproperty public var MarginalCDF : unreal.TArray<unreal.Float32>;
  
  /**
    active number of MIP levels
  **/
  @:uproperty public var NumMips : unreal.Int32;
  
  /**
    active texture dimensions, capped to 1024 x 1024
  **/
  @:uproperty public var Size : unreal.FIntPoint;
  
}

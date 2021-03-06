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
package unreal.geometrycache;

/**
  Interface for assets/objects that can own UserData *
**/
@:umodule("GeometryCache")
@:glueCppIncludes("GeometryCacheCodecBase.h")
@:uextern @:uclass extern class UGeometryCacheCodecBase extends unreal.UObject {
  
  /**
    Frames at which the topology of the decoded frames changes sorted in increasing order
    this allows fast topology queries between arbitrary frames.
    each codec has to fill this
  **/
  @:uproperty private var TopologyRanges : unreal.TArray<unreal.Int32>;
  
}

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
package unreal.augmentedreality;

/**
  Tells the AR system what type of environmental texture capturing to perform
**/
@:umodule("AugmentedReality")
@:glueCppIncludes("Public/ARSessionConfig.h")
@:uname("EAREnvironmentCaptureProbeType")
@:class @:uextern @:uenum extern enum EAREnvironmentCaptureProbeType {
  
  /**
    No capturing will happen
  **/
  None;
  
  /**
    Capturing will be manual with the app specifying where the probes are and their size
  **/
  Manual;
  
  /**
    Capturing will be automatic with probes placed by the AR system
  **/
  Automatic;
  
}

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
package unreal.controlrig;

/**
  A control unit used to drive a transform from an external source
**/
@:umodule("ControlRig")
@:glueCppIncludes("Public/Units/RigUnit_Control.h")
@:uextern @:ustruct extern class FRigUnit_Control extends unreal.controlrig.FRigUnit {
  
  /**
    The filter determines what axes can be manipulated by the in-viewport widgets
  **/
  @:uproperty public var Filter : unreal.animationcore.FTransformFilter;
  
  /**
    The resultant transform of this unit (Base * Filter(Transform))
  **/
  @:uproperty public var Result : unreal.FTransform;
  
  /**
    The initial transform that The Transform is initialized to.
  **/
  @:uproperty public var InitTransform : unreal.FTransform;
  
  /**
    The base that transform is relative to
  **/
  @:uproperty public var Base : unreal.FTransform;
  
  /**
    The transform of this control
  **/
  @:uproperty public var Transform : unreal.animationcore.FEulerTransform;
  #if WITH_EDITORONLY_DATA
  
  /**
    Actor class to use to display this in the viewport
  **/
  @:uproperty public var ControlClass : unreal.TSubclassOf<unreal.controlrig.AControlRigControl>;
  #end // WITH_EDITORONLY_DATA
  
}

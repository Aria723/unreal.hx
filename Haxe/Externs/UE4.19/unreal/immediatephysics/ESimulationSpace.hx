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
package unreal.immediatephysics;

/**
  Determines in what space the simulation should run
**/
@:umodule("ImmediatePhysics")
@:glueCppIncludes("Public/BoneControllers/AnimNode_RigidBody.h")
@:uname("ESimulationSpace")
@:class @:uextern @:uenum extern enum ESimulationSpace {
  
  /**
    Simulate in component space. Moving the entire skeletal mesh will have no affect on velocities
  **/
  ComponentSpace;
  
  /**
    Simulate in world space. Moving the skeletal mesh will generate velocity changes
  **/
  WorldSpace;
  
}
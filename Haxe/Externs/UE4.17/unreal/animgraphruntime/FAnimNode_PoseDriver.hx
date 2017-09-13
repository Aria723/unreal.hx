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
package unreal.animgraphruntime;

/**
  RBF based orientation driver
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("AnimNodes/AnimNode_PoseDriver.h")
@:uextern @:ustruct extern class FAnimNode_PoseDriver extends unreal.animgraphruntime.FAnimNode_PoseHandler {
  @:deprecated @:uproperty public var RadialScaling_DEPRECATED : unreal.Float32;
  @:deprecated @:uproperty public var Type_DEPRECATED : unreal.animgraphruntime.EPoseDriverType;
  @:deprecated @:uproperty public var TwistAxis_DEPRECATED : unreal.EBoneAxis;
  
  /**
    Deprecated
  **/
  @:deprecated @:uproperty public var SourceBone_DEPRECATED : unreal.FBoneReference;
  
  /**
    Targets used to compare with current pose and drive morphs/poses
  **/
  @:uproperty public var PoseTargets : unreal.TArray<unreal.animgraphruntime.FPoseDriverTarget>;
  
  /**
    Whether we should drive poses or curves
  **/
  @:uproperty public var DriveOutput : unreal.animgraphruntime.EPoseDriverOutput;
  
  /**
    Which part of the transform is read
  **/
  @:uproperty public var DriveSource : unreal.animgraphruntime.EPoseDriverSource;
  
  /**
    Parameters used by RBF solver
  **/
  @:uproperty public var RBFParams : unreal.animgraphruntime.FRBFParams;
  
  /**
    Optional other bone space to use when reading SourceBone transform.
    If not specified, we just use local space of SourceBone (ie relative to parent bone)
  **/
  @:uproperty public var EvalSpaceBone : unreal.FBoneReference;
  
  /**
    If bFilterDrivenBones is specified, only these bones will be modified by this node
  **/
  @:uproperty public var OnlyDriveBones : unreal.TArray<unreal.FBoneReference>;
  
  /**
    If we should filter bones to be driven using the DrivenBonesFilter array
  **/
  @:uproperty public var bOnlyDriveSelectedBones : Bool;
  
  /**
    Bone to use for driving parameters based on its orientation
  **/
  @:uproperty public var SourceBones : unreal.TArray<unreal.FBoneReference>;
  
  /**
    Bones to use for driving parameters based on their transform
  **/
  @:uproperty public var SourcePose : unreal.FPoseLink;
  
}
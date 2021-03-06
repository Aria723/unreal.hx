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
  Simple 2 Bone IK Controller.
**/
@:umodule("AnimGraphRuntime")
@:glueCppIncludes("Public/BoneControllers/AnimNode_TwoBoneIK.h")
@:uextern @:ustruct extern class FAnimNode_TwoBoneIK extends unreal.animgraphruntime.FAnimNode_SkeletalControlBase {
  
  /**
    Whether or not to apply twist on the chain of joints. This clears the twist value along the TwistAxis
  **/
  @:uproperty public var bAllowTwist : Bool;
  
  /**
    Keep local rotation of end bone
  **/
  @:uproperty public var bMaintainEffectorRelRot : Bool;
  
  /**
    Set end bone to use End Effector rotation
  **/
  @:uproperty public var bTakeRotationFromEffectorSpace : Bool;
  
  /**
    Should stretching be allowed, to be prevent over extension
  **/
  @:uproperty public var bAllowStretching : Bool;
  
  /**
    Reference frame of Joint Target Location.
  **/
  @:uproperty public var JointTargetLocationSpace : unreal.EBoneControlSpace;
  
  /**
    Reference frame of Effector Location.
  **/
  @:uproperty public var EffectorLocationSpace : unreal.EBoneControlSpace;
  
  /**
    Specify which axis it's aligned. Used when removing twist
  **/
  @:uproperty public var TwistAxis : unreal.animationcore.FAxis;
  @:uproperty public var JointTarget : unreal.animgraphruntime.FBoneSocketTarget;
  
  /**
    Joint Target Location. Location used to orient Joint bone. *
  **/
  @:uproperty public var JointTargetLocation : unreal.FVector;
  @:uproperty public var EffectorTarget : unreal.animgraphruntime.FBoneSocketTarget;
  
  /**
    Effector Location. Target Location to reach.
  **/
  @:uproperty public var EffectorLocation : unreal.FVector;
  #if WITH_EDITORONLY_DATA
  
  /**
    If EffectorLocationSpace is a bone, this is the bone to use. *
  **/
  @:deprecated @:uproperty public var EffectorSpaceBoneName_DEPRECATED : unreal.FName;
  
  /**
    If JointTargetSpaceBoneName is a bone, this is the bone to use. *
  **/
  @:deprecated @:uproperty public var JointTargetSpaceBoneName_DEPRECATED : unreal.FName;
  
  /**
    Whether or not to apply twist on the chain of joints. This clears the twist value along the TwistAxis
  **/
  @:deprecated @:uproperty public var bNoTwist_DEPRECATED : Bool;
  
  /**
    Limits to use if stretching is allowed - old property DEPRECATED
  **/
  @:deprecated @:uproperty public var StretchLimits_DEPRECATED : unreal.FVector2D;
  #end // WITH_EDITORONLY_DATA
  
  /**
    Limits to use if stretching is allowed. This value determins what is the max stretch scale. For example, 1.5 means it will stretch until 150 % of the whole length of the limb.
  **/
  @:uproperty public var MaxStretchScale : unreal.Float32;
  
  /**
    Limits to use if stretching is allowed. This value determines when to start stretch. For example, 0.9 means once it reaches 90% of the whole length of the limb, it will start apply.
  **/
  @:uproperty public var StartStretchRatio : unreal.Float32;
  
  /**
    Name of bone to control. This is the main bone chain to modify from. *
  **/
  @:uproperty public var IKBone : unreal.FBoneReference;
  
}

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
package unreal.animgraph;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("AnimGraph")
@:glueCppIncludes("AnimStateTransitionNode.h")
@:uextern @:uclass extern class UAnimStateTransitionNode extends unreal.animgraph.UAnimStateNodeBase {
  @:uproperty public var SharedCrossfadeIdx : unreal.Int32;
  @:uproperty public var SharedCrossfadeGuid : unreal.FGuid;
  @:uproperty public var SharedCrossfadeName : unreal.FString;
  
  /**
    Color we draw in the editor as if we are shared
  **/
  @:uproperty public var SharedColor : unreal.FLinearColor;
  
  /**
    Shared rules guid useful when copying between different state machines
  **/
  @:uproperty public var SharedRulesGuid : unreal.FGuid;
  
  /**
    What we call this transition if we are shared ('Transition X to Y' can't be used since its used in multiple places)
  **/
  @:uproperty public var SharedRulesName : unreal.FString;
  
  /**
    The cross-fade settings of this node may be shared
  **/
  @:uproperty public var bSharedCrossfade : Bool;
  
  /**
    The rules for this transition may be shared with other transition nodes
  **/
  @:uproperty public var bSharedRules : Bool;
  
  /**
    This transition can go both directions
  **/
  @:uproperty public var Bidirectional : Bool;
  @:uproperty public var TransitionInterrupt : unreal.FAnimNotifyEvent;
  @:uproperty public var TransitionEnd : unreal.FAnimNotifyEvent;
  @:uproperty public var TransitionStart : unreal.FAnimNotifyEvent;
  
  /**
    What transition logic to use
  **/
  @:uproperty public var LogicType : unreal.ETransitionLogicType;
  
  /**
    Try setting the rule automatically based on most relevant player node's remaining time and the CrossfadeDuration of the transition, ignoring the internal time
  **/
  @:uproperty public var bAutomaticRuleBasedOnSequencePlayerInState : Bool;
  
  /**
    The blend profile to use to evaluate this transition per-bone
  **/
  @:uproperty public var BlendProfile : unreal.UBlendProfile;
  @:uproperty public var CustomBlendCurve : unreal.UCurveFloat;
  @:uproperty public var BlendMode : unreal.EAlphaBlendOption;
  
  /**
    The type of blending to use in the crossfade
  **/
  @:deprecated @:uproperty public var CrossfadeMode_DEPRECATED : unreal.ETransitionBlendMode;
  
  /**
    The duration to cross-fade for
  **/
  @:uproperty public var CrossfadeDuration : unreal.Float32;
  
  /**
    The priority order of this transition. If multiple transitions out of a state go
    true at the same time, the one with the smallest priority order will take precedent
  **/
  @:uproperty public var PriorityOrder : unreal.Int32;
  
  /**
    The animation graph for this transition if it uses custom blending (returning a pose)
  **/
  @:uproperty public var CustomTransitionGraph : unreal.UEdGraph;
  
  /**
    The transition logic graph for this transition (returning a boolean)
  **/
  @:uproperty public var BoundGraph : unreal.UEdGraph;
  
}
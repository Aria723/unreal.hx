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
  MovementComponent is an abstract component class that defines functionality for moving a PrimitiveComponent (our UpdatedComponent) each tick.
  Base functionality includes:
     - Restricting movement to a plane or axis.
     - Utility functions for special handling of collision results (SlideAlongSurface(), ComputeSlideVector(), TwoWallAdjust()).
     - Utility functions for moving when there may be initial penetration (SafeMoveUpdatedComponent(), ResolvePenetration()).
     - Automatically registering the component tick and finding a component to move on the owning Actor.
  Normally the root component of the owning actor is moved, however another component may be selected (see SetUpdatedComponent()).
  During swept (non-teleporting) movement only collision of UpdatedComponent is considered, attached components will teleport to the end location ignoring collision.
**/
@:glueCppIncludes("GameFramework/MovementComponent.h")
@:uextern @:uclass extern class UMovementComponent extends unreal.UActorComponent {
  
  /**
    If true, enables bShouldUpdatePhysicsVolume on the UpdatedComponent during initialization from SetUpdatedComponent(), otherwise disables such updates.
    Only enabled if bAutoRegisterPhysicsVolumeUpdates is true.
    WARNING: UpdatePhysicsVolume is potentially expensive if overlap events are also *disabled* because it requires a separate query against all physics volumes in the world.
  **/
  @:uproperty public var bComponentShouldUpdatePhysicsVolume : Bool;
  
  /**
    If true, then applies the value of bComponentShouldUpdatePhysicsVolume to the UpdatedComponent. If false, will not change bShouldUpdatePhysicsVolume on the UpdatedComponent at all.
    @see bComponentShouldUpdatePhysicsVolume
  **/
  @:uproperty public var bAutoRegisterPhysicsVolumeUpdates : Bool;
  
  /**
    If true and plane constraints are enabled, then the updated component will be snapped to the plane when first attached.
  **/
  @:uproperty public var bSnapToPlaneAtStart : Bool;
  
  /**
    If true, movement will be constrained to a plane.
    @see PlaneConstraintNormal, PlaneConstraintOrigin, PlaneConstraintAxisSetting
  **/
  @:uproperty public var bConstrainToPlane : Bool;
  
  /**
    If true, registers the owner's Root component as the UpdatedComponent if there is not one currently assigned.
  **/
  @:uproperty public var bAutoRegisterUpdatedComponent : Bool;
  
  /**
    If true, after registration we will add a tick dependency to tick before our owner (if we can both tick).
    This is important when our tick causes an update in the owner's position, so that when the owner ticks it uses the most recent position without lag.
    Disabling this can improve performance if both objects tick but the order of ticks doesn't matter.
  **/
  @:uproperty public var bTickBeforeOwner : Bool;
  
  /**
    If true, whenever the updated component is changed, this component will enable or disable its tick dependent on whether it has something to update.
    This will NOT enable tick at startup if bAutoActivate is false, because presumably you have a good reason for not wanting it to start ticking initially.
  **/
  @:uproperty public var bAutoUpdateTickRegistration : Bool;
  
  /**
    If true, skips TickComponent() if UpdatedComponent was not recently rendered.
  **/
  @:uproperty public var bUpdateOnlyIfRendered : Bool;
  
  /**
    The origin of the plane that constrains movement, if plane constraint is enabled.
    This defines the behavior of snapping a position to the plane, such as by SnapUpdatedComponentToPlane().
    @see bConstrainToPlane, SetPlaneConstraintOrigin().
  **/
  @:uproperty private var PlaneConstraintOrigin : unreal.FVector;
  
  /**
    The normal or axis of the plane that constrains movement, if bConstrainToPlane is enabled.
    If for example you wanted to constrain movement to the X-Z plane (so that Y cannot change), the normal would be set to X=0 Y=1 Z=0.
    This is recalculated whenever PlaneConstraintAxisSetting changes. It is normalized once the component is registered with the game world.
    @see bConstrainToPlane, SetPlaneConstraintNormal(), SetPlaneConstraintFromVectors()
  **/
  @:uproperty private var PlaneConstraintNormal : unreal.FVector;
  
  /**
    Current velocity of updated component.
  **/
  @:uproperty public var Velocity : unreal.FVector;
  
  /**
    UpdatedComponent, cast as a UPrimitiveComponent. May be invalid if UpdatedComponent was null or not a UPrimitiveComponent.
  **/
  @:uproperty public var UpdatedPrimitive : unreal.UPrimitiveComponent;
  
  /**
    The component we move and update.
    If this is null at startup and bAutoRegisterUpdatedComponent is true, the owning Actor's root component will automatically be set as our UpdatedComponent at startup.
    @see bAutoRegisterUpdatedComponent, SetUpdatedComponent(), UpdatedPrimitive
  **/
  @:uproperty public var UpdatedComponent : unreal.USceneComponent;
  
  /**
    Returns gravity that affects this component
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetGravityZ() : unreal.Float32;
  
  /**
    Returns maximum speed of component in current movement mode.
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetMaxSpeed() : unreal.Float32;
  
  /**
    Returns a scalar applied to the maximum velocity that the component can currently move.
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function K2_GetMaxSpeedModifier() : unreal.Float32;
  
  /**
    Returns the result of GetMaxSpeed() * GetMaxSpeedModifier().
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function K2_GetModifiedMaxSpeed() : unreal.Float32;
  
  /**
    Returns true if the current velocity is exceeding the given max speed (usually the result of GetMaxSpeed()), within a small error tolerance.
    Note that under normal circumstances updates cause by acceleration will not cause this to be true, however external forces or changes in the max speed limit
    can cause the max speed to be violated.
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function IsExceedingMaxSpeed(MaxSpeed : unreal.Float32) : Bool;
  
  /**
    Stops movement immediately (zeroes velocity, usually zeros acceleration for components with acceleration).
  **/
  @:ufunction(BlueprintCallable) public function StopMovementImmediately() : Void;
  
  /**
    Returns the PhysicsVolume this MovementComponent is using, or the world's default physics volume if none. *
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function GetPhysicsVolume() : unreal.APhysicsVolume;
  
  /**
    Delegate when PhysicsVolume of UpdatedComponent has been changed *
  **/
  @:ufunction public function PhysicsVolumeChanged(NewVolume : unreal.APhysicsVolume) : Void;
  
  /**
    Assign the component we move and update.
  **/
  @:ufunction(BlueprintCallable) public function SetUpdatedComponent(NewUpdatedComponent : unreal.USceneComponent) : Void;
  
  /**
    Moves our UpdatedComponent by the given Delta, and sets rotation to NewRotation.
    Respects the plane constraint, if enabled.
    @return True if some movement occurred, false if no movement occurred. Result of any impact will be stored in OutHit.
  **/
  @:ufunction(BlueprintCallable) @:final public function K2_MoveUpdatedComponent(Delta : unreal.FVector, NewRotation : unreal.FRotator, OutHit : unreal.PRef<unreal.FHitResult>, bSweep : Bool = true, bTeleport : Bool = false) : Bool;
  
  /**
    Set the plane constraint axis setting.
    Changing this setting will modify the current value of PlaneConstraintNormal.
    
    @param  NewAxisSetting New plane constraint axis setting.
  **/
  @:ufunction(BlueprintCallable) public function SetPlaneConstraintAxisSetting(NewAxisSetting : unreal.EPlaneConstraintAxisSetting) : Void;
  
  /**
    Get the plane constraint axis setting.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetPlaneConstraintAxisSetting() : unreal.EPlaneConstraintAxisSetting;
  
  /**
    Sets the normal of the plane that constrains movement, enforced if the plane constraint is enabled.
    Changing the normal automatically sets PlaneConstraintAxisSetting to "Custom".
    
    @param PlaneNormal   The normal of the plane. If non-zero in length, it will be normalized.
  **/
  @:ufunction(BlueprintCallable) public function SetPlaneConstraintNormal(PlaneNormal : unreal.FVector) : Void;
  
  /**
    Uses the Forward and Up vectors to compute the plane that constrains movement, enforced if the plane constraint is enabled.
  **/
  @:ufunction(BlueprintCallable) public function SetPlaneConstraintFromVectors(Forward : unreal.FVector, Up : unreal.FVector) : Void;
  
  /**
    Sets the origin of the plane that constrains movement, enforced if the plane constraint is enabled.
  **/
  @:ufunction(BlueprintCallable) public function SetPlaneConstraintOrigin(PlaneOrigin : unreal.FVector) : Void;
  
  /**
    Sets whether or not the plane constraint is enabled.
  **/
  @:ufunction(BlueprintCallable) public function SetPlaneConstraintEnabled(bEnabled : Bool) : Void;
  
  /**
    Returns the normal of the plane that constrains movement, enforced if the plane constraint is enabled.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetPlaneConstraintNormal() : unreal.Const<unreal.PRef<unreal.FVector>>;
  
  /**
    Get the plane constraint origin. This defines the behavior of snapping a position to the plane, such as by SnapUpdatedComponentToPlane().
    @return The origin of the plane that constrains movement, if the plane constraint is enabled.
  **/
  @:ufunction(BlueprintCallable) @:thisConst @:final public function GetPlaneConstraintOrigin() : unreal.Const<unreal.PRef<unreal.FVector>>;
  
  /**
    Constrain a direction vector to the plane constraint, if enabled.
    @see SetPlaneConstraint
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function ConstrainDirectionToPlane(Direction : unreal.FVector) : unreal.FVector;
  
  /**
    Constrain a position vector to the plane constraint, if enabled.
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function ConstrainLocationToPlane(Location : unreal.FVector) : unreal.FVector;
  
  /**
    Constrain a normal vector (of unit length) to the plane constraint, if enabled.
  **/
  @:ufunction(BlueprintCallable) @:thisConst public function ConstrainNormalToPlane(Normal : unreal.FVector) : unreal.FVector;
  
  /**
    Snap the updated component to the plane constraint, if enabled.
  **/
  @:ufunction(BlueprintCallable) public function SnapUpdatedComponentToPlane() : Void;
  
}
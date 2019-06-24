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
package unreal.applearkit;

@:umodule("AppleARKit")
@:glueCppIncludes("AppleARKitBlueprintLibrary.h")
@:uextern @:uclass extern class UAppleARKitBlueprintLibrary extends unreal.UBlueprintFunctionLibrary {
  
  /**
    Returns the last processed FAppleARKitFrame from the session.
    
    When called from the game thread, we ensure a single frame is returned for the duration
    of the game thread update by watching for changes to GFrameNumber to trigger pulling a
    new frame from the session.
  **/
  @:ufunction(BlueprintCallable) static public function GetCurrentFrame(WorldContextObject : unreal.UObject, OutCurrentFrame : unreal.PRef<unreal.applearkit.FAppleARKitFrame>) : Bool;
  
  /**
    Searches the last processed frame for anchors corresponding to a point in the captured image.
    
    A 2D point in the captured image's coordinate space can refer to any point along a line segment
    in the 3D coordinate space. Hit-testing is the process of finding anchors of a frame located along this line segment.
    
    NOTE: The hit test locations are reported in ARKit space. For hit test results
    in game world coordinates, you're after UAppleARKitCameraComponent::HitTestAtScreenPosition
    
    @param ScreenPosition The viewport pixel coordinate of the trace origin.
  **/
  @:ufunction(BlueprintCallable) static public function HitTestAtScreenPosition_TrackingSpace(WorldContextObject : unreal.UObject, ScreenPosition : unreal.Const<unreal.FVector2D>, Types : unreal.applearkit.EAppleARKitHitTestResultType, OutResults : unreal.PRef<unreal.TArray<unreal.applearkit.FAppleARKitHitTestResult>>) : Bool;
  
}
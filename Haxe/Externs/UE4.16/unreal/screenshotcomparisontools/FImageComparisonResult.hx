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
package unreal.screenshotcomparisontools;

@:umodule("ScreenShotComparisonTools")
@:glueCppIncludes("ImageComparer.h")
@:noCopy @:noEquals @:uextern @:ustruct extern class FImageComparisonResult {
  @:uproperty public var Tolerance : unreal.screenshotcomparisontools.FImageTolerance;
  @:uproperty public var ErrorMessage : unreal.FText;
  @:uproperty public var GlobalDifference : unreal.Float64;
  @:uproperty public var MaxLocalDifference : unreal.Float64;
  @:uproperty public var ReportComparisonFile : unreal.FString;
  @:uproperty public var ReportIncomingFile : unreal.FString;
  @:uproperty public var ReportApprovedFile : unreal.FString;
  @:uproperty public var ComparisonFile : unreal.FString;
  @:uproperty public var IncomingFile : unreal.FString;
  @:uproperty public var ApprovedFile : unreal.FString;
  
}
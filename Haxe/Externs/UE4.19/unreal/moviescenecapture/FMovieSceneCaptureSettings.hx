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
package unreal.moviescenecapture;

/**
  Common movie-scene capture settings
**/
@:umodule("MovieSceneCapture")
@:glueCppIncludes("Public/MovieSceneCaptureSettings.h")
@:uextern @:ustruct extern class FMovieSceneCaptureSettings {
  
  /**
    Whether to show the in-game HUD whilst capturing
  **/
  @:uproperty public var bShowHUD : Bool;
  
  /**
    Whether to show the local player whilst capturing
  **/
  @:uproperty public var bShowPlayer : Bool;
  
  /**
    Whether to allow player rotation whilst capturing
  **/
  @:uproperty public var bAllowTurning : Bool;
  
  /**
    Whether to allow player movement whilst capturing
  **/
  @:uproperty public var bAllowMovement : Bool;
  
  /**
    Whether to enable cinematic mode whilst capturing
  **/
  @:uproperty public var bCinematicMode : Bool;
  
  /**
    Whether to enable cinematic engine scalability settings
  **/
  @:uproperty public var bCinematicEngineScalability : Bool;
  
  /**
    Whether to texture streaming should be enabled while capturing.  Turning off texture streaming may cause much more memory to be used, but also reduces the chance of blurry textures in your captured video.
  **/
  @:uproperty public var bEnableTextureStreaming : Bool;
  
  /**
    The resolution at which to capture
  **/
  @:uproperty public var Resolution : unreal.moviescenecapture.FCaptureResolution;
  
  /**
    The frame rate at which to capture
  **/
  @:uproperty public var FrameRate : unreal.Int32;
  
  /**
    How much to zero-pad frame numbers on filenames
  **/
  @:uproperty public var ZeroPadFrameNumbers : unreal.UInt8;
  
  /**
    Number of frame handles to include for each shot
  **/
  @:uproperty public var HandleFrames : unreal.Int32;
  
  /**
    True if frame numbers in the output files should be relative to zero, rather than the actual frame numbers in the originating animation content
  **/
  @:uproperty public var bUseRelativeFrameNumbers : Bool;
  
  /**
    Whether to overwrite existing files or not
  **/
  @:uproperty public var bOverwriteExisting : Bool;
  
  /**
    The format to use for the resulting filename. Extension will be added automatically. Any tokens of the form {token} will be replaced with the corresponding value:
    {fps}                - The captured framerate
    {frame}              - The current frame number (only relevant for image sequences)
    {width}              - The width of the captured frames
    {height}             - The height of the captured frames
    {world}              - The name of the current world
    {quality}    - The image compression quality setting
    {material}   - The material/render pass
    {shot}       - The name of the level sequence asset shot being played
  **/
  @:uproperty public var OutputFormat : unreal.FString;
  
  /**
    Optional game mode to override the map's default game mode with.  This can be useful if the game's normal mode displays UI elements or loading screens that you don't want captured.
  **/
  @:uproperty public var GameModeOverride : unreal.TSubclassOf<unreal.AGameModeBase>;
  
  /**
    The directory to output the captured file(s) in
  **/
  @:uproperty public var OutputDirectory : unreal.FDirectoryPath;
  
}

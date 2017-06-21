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
package unreal.audioeditor;


/**
  WARNING: This type was defined as MinimalAPI on its declaration. Because of that, its properties/methods are inaccessible
  
  
**/
@:umodule("AudioEditor")
@:glueCppIncludes("Factories/SoundFactory.h")
@:uextern @:uclass extern class USoundFactory extends unreal.editor.UFactory {
  
  /**
    If not empty, generated SoundCues will be placed in PackageCuePackageSuffix, but only if bAutoCreateCue is true
  **/
  @:uproperty public var CuePackageSuffix : unreal.FString;
  
  /**
    The volume of the created sound cue
  **/
  @:uproperty public var CueVolume : unreal.Float32;
  
  /**
    If enabled, the created sound cue will include a modulator node
  **/
  @:uproperty public var bIncludeModulatorNode : Bool;
  
  /**
    If enabled, the created sound cue will include a looping node
  **/
  @:uproperty public var bIncludeLoopingNode : Bool;
  
  /**
    If enabled, the created sound cue will include a attenuation node
  **/
  @:uproperty public var bIncludeAttenuationNode : Bool;
  
  /**
    If enabled, a sound cue will automatically be created for the sound
  **/
  @:uproperty public var bAutoCreateCue : Bool;
  
}
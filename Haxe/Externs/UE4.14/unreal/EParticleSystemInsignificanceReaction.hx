/**
   * 
   * WARNING! This file was autogenerated by: 
   *  _   _ _____     ___   _   _ __   __ 
   * | | | |  ___|   /   | | | | |\ \ / / 
   * | | | | |__    / /| | | |_| | \ V /  
   * | | | |  __|  / /_| | |  _  | /   \  
   * | |_| | |___  \___  | | | | |/ /^\ \ 
   *  \___/\____/      |_/ \_| |_/\/   \/ 
   * 
   * This file was autogenerated by UE4HaxeExternGenerator using UHT definitions. It only includes UPROPERTYs and UFUNCTIONs. Do not modify it!
   * In order to add more definitions, create or edit a type with the same name/package, but with an `_Extra` suffix
**/
package unreal;


/**
  Determines what a particle system will do when all of it's emitters become insignificant.
**/
@:glueCppIncludes("ParticleHelper.h")
@:uname("EParticleSystemInsignificanceReaction")
@:class @:uextern @:uenum extern enum EParticleSystemInsignificanceReaction {
  
  /**
    Looping systems will DisableTick. Non-looping systems will Complete.
  **/
  Auto;
  
  /**
    The system will be considered complete and will auto destroy if desired etc.
  **/
  Complete;
  
  /**
    The system will simply stop ticking. Tick will be re-enabled when any emitters become significant again. This is useful for persistent fx such as environmental fx.
  **/
  DisableTick;
  
  /**
    As DisableTick but will also kill all particles.
  **/
  DisableTickAndKill;
  
  /**
    Hidden for now until I make it useful i.e. Killing particles saves memory.
  **/
  Num;
  
}
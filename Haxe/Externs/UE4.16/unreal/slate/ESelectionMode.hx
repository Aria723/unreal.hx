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
package unreal.slate;

@:umodule("Slate")
@:glueCppIncludes("Framework/Views/ITypedTableView.h")
@:uname("ESelectionMode.Type")
@:uextern @:uenum extern enum ESelectionMode {
  
  /**
    Nothing can be selected and there is no hover cue for selection.  You can still handle mouse button events though.
  **/
  None;
  
  /**
    A single item can be selected at once, or no item may be selected.
  **/
  Single;
  
  /**
    A single item can be selected at once, or no item may be selected.  You can click the item to toggle selection on and off.
  **/
  SingleToggle;
  
  /**
    Multiple items can be selected at the same time.
  **/
  Multi;
  
}
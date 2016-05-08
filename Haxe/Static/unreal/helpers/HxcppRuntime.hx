package unreal.helpers;
import unreal.Wrapper;

@:headerClassCode('
  inline static unreal::UIntPtr callFunction(unreal::UIntPtr ptr) { return callFunction0(ptr); }
  inline static unreal::UIntPtr callFunction(unreal::UIntPtr ptr, unreal::UIntPtr arg0) { return callFunction1(ptr, arg0); }
  inline static unreal::UIntPtr callFunction(unreal::UIntPtr ptr, unreal::UIntPtr arg0, unreal::UIntPtr arg1) { return callFunction2(ptr, arg0, arg1); }
  inline static unreal::UIntPtr callFunction(unreal::UIntPtr ptr, unreal::UIntPtr arg0, unreal::UIntPtr arg1, unreal::UIntPtr arg2) { return callFunction3(ptr, arg0, arg1, arg2); }
  inline static unreal::UIntPtr callFunction(unreal::UIntPtr ptr, unreal::UIntPtr arg0, unreal::UIntPtr arg1, unreal::UIntPtr arg2, unreal::UIntPtr arg3) { return callFunction4(ptr, arg0, arg1, arg2, arg3); }
  inline static unreal::UIntPtr callFunction(unreal::UIntPtr ptr, unreal::UIntPtr arg0, unreal::UIntPtr arg1, unreal::UIntPtr arg2, unreal::UIntPtr arg3, unreal::UIntPtr arg4) { return callFunction5(ptr, arg0, arg1, arg2, arg3, arg4); }
  inline static unreal::UIntPtr callFunction(unreal::UIntPtr ptr, unreal::UIntPtr arg0, unreal::UIntPtr arg1, unreal::UIntPtr arg2, unreal::UIntPtr arg3, unreal::UIntPtr arg4, unreal::UIntPtr arg5) { return callFunction6(ptr, arg0, arg1, arg2, arg3, arg4, arg5); }
  inline static unreal::UIntPtr callFunction(unreal::UIntPtr ptr, unreal::UIntPtr arg0, unreal::UIntPtr arg1, unreal::UIntPtr arg2, unreal::UIntPtr arg3, unreal::UIntPtr arg4, unreal::UIntPtr arg5, unreal::UIntPtr arg6) { return callFunction7(ptr, arg0, arg1, arg2, arg3, arg4, arg5, arg6); }
  inline static unreal::UIntPtr callFunction(unreal::UIntPtr ptr, unreal::UIntPtr arg0, unreal::UIntPtr arg1, unreal::UIntPtr arg2, unreal::UIntPtr arg3, unreal::UIntPtr arg4, unreal::UIntPtr arg5, unreal::UIntPtr arg6, unreal::UIntPtr arg7) { return callFunction8(ptr, arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7); }
')
@:uexpose @:keep class HxcppRuntime
{
  @:extern static inline function toDyn(ptr:UIntPtr) return HaxeHelpers.pointerToDynamic(ptr);
  @:extern static inline function toPtr(dyn:Dynamic) return HaxeHelpers.dynamicToPointer(dyn);

  public static function constCharToString(str:cpp.ConstCharStar) : UIntPtr {
    return toPtr(str.toString());
  }
  public static function stringToConstChar(ptr:UIntPtr) : cpp.ConstCharStar {
    return cpp.ConstCharStar.fromString( toDyn(ptr) );
  }

  @:void public static function throwString(str:cpp.ConstCharStar) : Void {
    throw str.toString();
  }


  public static function boxBool(b:Bool):UIntPtr {
    return HaxeHelpers.dynamicToPointer(b);
  }

  public static function boxInt(i:Int):UIntPtr {
    return HaxeHelpers.dynamicToPointer(i);
  }

  public static function boxFloat(f:cpp.Float64):UIntPtr {
    return HaxeHelpers.dynamicToPointer(f);
  }

  public static function boxInt64(i:cpp.Int64):UIntPtr {
    return HaxeHelpers.dynamicToPointer(i);
  }

  public static function unboxBool(ptr:UIntPtr):Bool {
    return HaxeHelpers.pointerToDynamic(ptr);
  }

  public static function unboxInt(ptr:UIntPtr):Int {
    return HaxeHelpers.pointerToDynamic(ptr);
  }

  public static function unboxFloat(ptr:UIntPtr):cpp.Float64 {
    return HaxeHelpers.pointerToDynamic(ptr);
  }

  public static function unboxInt64(ptr:UIntPtr):cpp.Int64 {
    return HaxeHelpers.pointerToDynamic(ptr);
  }


  public static function createInlinePodWrapper(size:Int, info:UIntPtr) : VariantPtr {
    return VariantPtr.fromDynamic( InlinePodWrapper.create(size, info) );
  }

  public static function createInlineWrapper(size:Int, info:UIntPtr) : VariantPtr {
    return VariantPtr.fromDynamic( InlineWrapper.create(size, info) );
  }

  public static function createInlineTemplateWrapper(size:Int, info:UIntPtr) : VariantPtr {
    return VariantPtr.fromDynamic( InlineTemplateWrapper.create(size, info) );
  }

  public static function createPointerTemplateWrapper(pointer:UIntPtr, info:UIntPtr) : VariantPtr {
    return VariantPtr.fromDynamic( new PointerTemplateWrapper(pointer, info) );
  }

  public static function getTemplateOffset() : UIntPtr {
    return unreal.Wrapper.TemplateWrapper.getOffset();
  }

  public static function getInlineWrapperOffset() : UIntPtr {
    return unreal.Wrapper.InlineWrapper.getOffset();
  }

  public static function getInlinePodWrapperOffset() : UIntPtr {
    return unreal.Wrapper.InlinePodWrapper.getOffset();
  }

  public static function callFunction0(ptr:UIntPtr) : UIntPtr {
    return toPtr( toDyn(ptr)() );
  }
  public static function callFunction1(ptr:UIntPtr, arg0:UIntPtr) : UIntPtr {
    return toPtr( (toDyn(ptr))(toDyn(arg0)) );
  }
  public static function callFunction2(ptr:UIntPtr, arg0:UIntPtr, arg1:UIntPtr) : UIntPtr {
    return toPtr( (toDyn(ptr))(toDyn(arg0), toDyn(arg1)) );
  }
  public static function callFunction3(ptr:UIntPtr, arg0:UIntPtr, arg1:UIntPtr, arg2:UIntPtr) : UIntPtr {
    return toPtr( (toDyn(ptr))(toDyn(arg0), toDyn(arg1), toDyn(arg2)) );
  }
  public static function callFunction4(ptr:UIntPtr, arg0:UIntPtr, arg1:UIntPtr, arg2:UIntPtr, arg3:UIntPtr) : UIntPtr {
    return toPtr( (toDyn(ptr))(toDyn(arg0), toDyn(arg1), toDyn(arg2), toDyn(arg3)) );
  }
  public static function callFunction5(ptr:UIntPtr, arg0:UIntPtr, arg1:UIntPtr, arg2:UIntPtr, arg3:UIntPtr, arg4:UIntPtr) : UIntPtr {
    return toPtr( (toDyn(ptr))(toDyn(arg0), toDyn(arg1), toDyn(arg2), toDyn(arg3), toDyn(arg4)) );
  }
  public static function callFunction6(ptr:UIntPtr, arg0:UIntPtr, arg1:UIntPtr, arg2:UIntPtr, arg3:UIntPtr, arg4:UIntPtr, arg5:UIntPtr) : UIntPtr {
    return toPtr( (toDyn(ptr))(toDyn(arg0), toDyn(arg1), toDyn(arg2), toDyn(arg3), toDyn(arg4), toDyn(arg5)) );
  }
  public static function callFunction7(ptr:UIntPtr, arg0:UIntPtr, arg1:UIntPtr, arg2:UIntPtr, arg3:UIntPtr, arg4:UIntPtr, arg5:UIntPtr, arg6:UIntPtr) : UIntPtr {
    return toPtr( (toDyn(ptr))(toDyn(arg0), toDyn(arg1), toDyn(arg2), toDyn(arg3), toDyn(arg4), toDyn(arg5), toDyn(arg6)) );
  }
  public static function callFunction8(ptr:UIntPtr, arg0:UIntPtr, arg1:UIntPtr, arg2:UIntPtr, arg3:UIntPtr, arg4:UIntPtr, arg5:UIntPtr, arg6:UIntPtr, arg7:UIntPtr) : UIntPtr {
    return toPtr( (toDyn(ptr))(toDyn(arg0), toDyn(arg1), toDyn(arg2), toDyn(arg3), toDyn(arg4), toDyn(arg5), toDyn(arg6), toDyn(arg7)) );
  }
}


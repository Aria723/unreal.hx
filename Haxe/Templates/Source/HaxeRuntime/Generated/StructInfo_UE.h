#pragma once
// basic includes
#include <typeinfo>

// uhx includes
#include "IntPtr.h"
#include "StructInfo.h"

// unreal includes
#include "Engine.h"
#include "UObject/Class.h"

namespace uhx {

enum EImplementationKind {
  /**
   * The type's StructInfo can be determined by a template
   **/
  NormalType = 0,

  /**
   * The type's StructInfo can be determined by a template, and it is a plain old data type
   **/
  PODType = 1,

  /**
   * Type needs a custom implementation of StructInfo
   **/
  Templated = 2,
};

/**
 * Trait to determine what implementation of TStructData we need
 **/
template<typename T> struct TImplementationKind {
  enum { Value = TIsPODType<T>::Value ? PODType : NormalType };
};

// template<typename T> struct TImplementationKind<T*> { enum { Value = None }; };
// template<typename T> struct TImplementationKind<const T*> { enum { Value = None }; };
// template<typename T> struct TImplementationKind<const T* const> { enum { Value = None }; };

// Templated types always need a templated implementation
template<template<class> class T, class T1> struct TImplementationKind<T<T1>> { enum { Value = Templated }; };
template<template<class, class> class T, class T1, class T2> struct TImplementationKind<T<T1,T2>> { enum { Value = Templated }; };
template<template<class, class, class> class T, class T1, class T2, class T3> struct TImplementationKind<T<T1,T2,T3>> { enum { Value = Templated }; };
template<template<class, class, class, class> class T, class T1, class T2, class T3, class T4> struct TImplementationKind<T<T1,T2,T3,T4>> { enum { Value = Templated }; };
template<template<class, class, class, class, class> class T, class T1, class T2, class T3, class T4, class T5> struct TImplementationKind<T<T1,T2,T3,T4,T5>> { enum { Value = Templated }; };
template<template<class, class, class, class, class, class> class T, class T1, class T2, class T3, class T4, class T5, class T6> struct TImplementationKind<T<T1,T2,T3,T4,T5,T6>> { enum { Value = Templated }; };

// default implementation of getting type names. Not very pretty on gcc, but still nice for debugging
// use ENABLE_DEBUG_TYPENAME to add more readable implementations
template<typename T>
struct TypeName
{
  inline static const char* Get()
  {
    // unfortunately we can't use this, because unreal compiles with -fno-rtti
    // return typeid(T).name();
    return nullptr;
  }
};

// a specialization for each type of those you want to support
#define ENABLE_DEBUG_TYPENAME(A) namespace uhx { template<> struct TypeName<A> { inline static const char *Get() { return #A; }}; }

/**
 * General definition of TStructData, which allows getting a StructInfo type of each type
 **/
template<typename T, int Kind=TImplementationKind<T>::Value>
struct TStructData {
  static const StructInfo *getInfo();
};

// POD types
template<typename T>
struct TStructData<T, PODType> {
  typedef TStructData<T, PODType> TSelf;

  inline static const StructInfo *getInfo() {
    static StructInfo info = {
      .name = TypeName<T>::Get(),
      .flags = UHXS_POD,
      .size = (unreal::UIntPtr) sizeof(T),
      .destruct = nullptr,
      .genericParams = nullptr,
      .genericImplementation = nullptr
    };
    return &info;
  }
};

// Normal types
template<typename T>
struct TStructData<T, NormalType> {
  typedef TStructOpsTypeTraits<T> TTraits;
  typedef TStructData<T, NormalType> TSelf;

  inline static const StructInfo *getInfo() {
    static StructInfo info = {
      .name = TypeName<T>::Get(),
      .flags = UHX_None,
      .size = (unreal::UIntPtr) sizeof(T),
      .destruct = (TTraits::WithNoDestructor ? nullptr : &TSelf::doDestruct),
      .genericParams = nullptr,
      .genericImplementation = nullptr
    };
    return &info;
  }
private:
  static void doDestruct(unreal::UIntPtr ptr) {
    ((T*)ptr)->~T();
  }
};

// shared pointers - allow 
// #define DO_SHARED_PTR(TSharedName, Mode) \
//   template<typename T> \
//   struct TStructData<TSharedName<T>, Custom> { \
//     typedef TStructData<TSharedName<T>, Custom> TSelf; \
//     \
//     inline static const StructInfo *getInfo() { \
//       static StructInfo info = doGetInfo(); \
//       return &info; \
//     } \
//   private: \
//     inline static StructInfo doGetInfo() { \
//       StructInfo ret = TStructData<T>::getInfo(); \
//       ret.size = (unreal::UIntPtr) sizeof(TSharedName<T>); \
//       ret.flags |= UHXS_SharedPointer; \
//       ret.destruct 

}

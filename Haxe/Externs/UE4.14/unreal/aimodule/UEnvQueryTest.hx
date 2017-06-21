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
package unreal.aimodule;

@:umodule("AIModule")
@:glueCppIncludes("EnvironmentQuery/EnvQueryTest.h")
@:uextern @:uclass extern class UEnvQueryTest extends unreal.aimodule.UEnvQueryNode {
  
  /**
    When set to true enables usage of ReferenceValue. It's false by default
  **/
  @:uproperty public var bDefineReferenceValue : Bool;
  
  /**
    When specified gets used to normalize test's results in such a way that the closer a value is to ReferenceValue
        the higher normalized result it will produce. Value farthest from ReferenceValue will be normalized
        to 0, and all the other values in between will get normalized linearly with the distance to ReferenceValue.
  **/
  @:uproperty public var ReferenceValue : unreal.aimodule.FAIDataProviderFloatValue;
  
  /**
    The weight (factor) by which to multiply the normalized score after the scoring equation is applied.
  **/
  @:uproperty public var ScoringFactor : unreal.aimodule.FAIDataProviderFloatValue;
  
  /**
    Maximum value to use to normalize the raw test value before applying scoring formula.
  **/
  @:uproperty public var ScoreClampMax : unreal.aimodule.FAIDataProviderFloatValue;
  
  /**
    Minimum value to use to normalize the raw test value before applying scoring formula.
  **/
  @:uproperty public var ScoreClampMin : unreal.aimodule.FAIDataProviderFloatValue;
  
  /**
    How should the upper bound for normalization of the raw test value before applying the scoring formula be determined?
              Should it use the highest value found (tested), the upper threshold for filtering, or a separate specified normalization maximum?
  **/
  @:uproperty public var ClampMaxType : unreal.aimodule.EEnvQueryTestClamping;
  
  /**
    How should the lower bound for normalization of the raw test value before applying the scoring formula be determined?
              Should it use the lowest value found (tested), the lower threshold for filtering, or a separate specified normalization minimum?
  **/
  @:uproperty public var ClampMinType : unreal.aimodule.EEnvQueryTestClamping;
  
  /**
    The shape of the curve equation to apply to the normalized score before multiplying by factor.
  **/
  @:uproperty public var ScoringEquation : unreal.aimodule.EEnvTestScoreEquation;
  
  /**
    Maximum limit (inclusive) of valid values for the raw test value. Higher values will be discarded as invalid.
  **/
  @:uproperty public var FloatValueMax : unreal.aimodule.FAIDataProviderFloatValue;
  
  /**
    Minimum limit (inclusive) of valid values for the raw test value. Lower values will be discarded as invalid.
  **/
  @:uproperty public var FloatValueMin : unreal.aimodule.FAIDataProviderFloatValue;
  
  /**
    Desired boolean value of the test for scoring to occur or filtering test to pass.
  **/
  @:uproperty public var BoolValue : unreal.aimodule.FAIDataProviderBoolValue;
  
  /**
    Does this test filter out results that are below a lower limit, above an upper limit, or both?  Or does it just look for a matching value?
  **/
  @:uproperty public var FilterType : unreal.aimodule.EEnvTestFilterType;
  
  /**
    Determines scoring operator when context returns multiple items
  **/
  @:uproperty public var MultipleContextScoreOp : unreal.aimodule.EEnvTestScoreOperator;
  
  /**
    Determines filtering operator when context returns multiple items
  **/
  @:uproperty public var MultipleContextFilterOp : unreal.aimodule.EEnvTestFilterOperator;
  
  /**
    Optional comment or explanation about what this test is for.  Useful when the purpose of tests may not be clear,
    especially when there are multiple tests of the same type.
  **/
  @:uproperty public var TestComment : unreal.FString;
  
  /**
    The purpose of this test.  Should it be used for filtering possible results, scoring them, or both?
  **/
  @:uproperty public var TestPurpose : unreal.aimodule.EEnvTestPurpose;
  
  /**
    Number of test as defined in data asset
  **/
  @:uproperty public var TestOrder : unreal.Int32;
  
}
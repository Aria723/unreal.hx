package unreal;

@:hasEquals
extern class FPrimaryAssetType_Extra {
	@:uname(".ctor") public static function create(InName:FName):FPrimaryAssetType;

	@:thisConst
	public function ToString() : FString;

  @:expr(return ToString().toString())
  public function toString():String;
}

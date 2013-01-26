package basis.settings;


interface ISettings
{
	public function retrieve(completeHandler:Target->Void, errorHandler:String->Void):Void;
	public var target(default, null):Target;
}
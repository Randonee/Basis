package basis.settings;


class Target
{
	//Settings
	static inline public var APP_NAME:String = "appName";
	static inline public var MAIN:String = "main";
	static inline public var TYPE:String = "type";
	static inline public var DEBUG:String = "debug";
	static inline public var RUN_WHEN_FINISHED:String = "runWhenFinished";
	static inline public var BUILD_DIR:String = "buildDir";
	
	//Collections
	static inline public var SOURCE_PATHS:String = "sourcePaths";
	static inline public var HAXE_LIBS:String = "haxeLibs";
	static inline public var ASSET_PATHS:String = "assetPaths";
	static inline public var HAXE_ARGS:String = "haxeArgs";
	
	public var subTargets(default, null):Array<Target>;
	public var parentTarget(default, null):Target;
	public var name(default, default):String;
	
	private var settingCollections:Map<String, Array<String>>;
	private var settings:Map<String, String>;
	
	
	public function new(?parentTarget:Target = null)
	{
		this.parentTarget = parentTarget;
		
		settingCollections = new Map<String, Array<String>>();
		settings = new Map<String, String>();
		subTargets = new Array<Target>();
	}
	
	public function setSetting(name:String, value:String):Void
	{
		settings.set(name, value);
	}
	
	public function hasSetting(name:String):Bool
	{
		return getSetting(name) != null;
	}
	
	public function getSetting(name:String):String
	{
		var setting:String = settings.get(name);
		if(setting != null)
			return setting;
		
		if(parentTarget != null)
			return parentTarget.getSetting(name);
		
		return null;
	}
	
	public function getCollection(collection:String, ?includeParent:Bool = false):Array<String>
	{
	
		var settings:Array<String> = settingCollections.get(collection);
		
		
		if(settings != null && !includeParent)
			return settings;
			
		if(settings == null)
			settings = new Array<String>();
		
		if(parentTarget != null && includeParent)
			settings = parentTarget.getCollection(collection, true).concat(settings);
		
		return settings;
	}
	
	public function addToCollection(collectionName:String, value:String):Void
	{
		var collection:Array<String> = settingCollections.get(collectionName);
		if(collection == null)
		{
			collection = new Array<String>();
			settingCollections.set(collectionName, collection);
		}
		collection.push(value);
	}
	
	public function getSettingsContext(?obj:Dynamic=null):Dynamic
	{
		if(obj == null)
			obj = {};
			
		for(key in settings.keys())
			Reflect.setField(obj, key, settings.get(key));
		
		if(parentTarget != null)
			obj = parentTarget.getSettingsContext(obj);
		
		return obj;
	}
	
	public function getTargetWithName(targetName:String):Target
	{
		if(name == targetName)
			return this;
		
		for(target in subTargets)
		{
			var subTarget:Target = target.getTargetWithName(targetName);
			if(subTarget != null)
				return subTarget;
		}
		
		return null;
	}
	
}
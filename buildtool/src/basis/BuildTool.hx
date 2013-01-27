package basis;

import basis.settings.ISettings;
import basis.settings.XmlSettings;
import basis.settings.Target;
import sys.FileSystem;
import basis.ProcessUtil;


class BuildTool
{
	private var _settings:ISettings;
	private var _settingsFileName:String;
	private var _settingsDirectory:String;
	
	public function new():Void
	{
		var args:Array<String> = Sys.args();
		if(args.length == 2)
		{
			var settingsPath = args[0];
			var index:Int = settingsPath.lastIndexOf("/");
			if(index >= 0)
			{
				_settingsFileName = settingsPath.substring(index);
				
				if(args[0].indexOf("/") == 0)
					_settingsDirectory = settingsPath.substring(0, index);
				else
					_settingsDirectory = args[1] + "/" + settingsPath.substring(0, index);
			}
			else
			{
				_settingsDirectory = args[1];
				_settingsFileName = args[0];
			}
			
			Sys.setCwd(_settingsDirectory);
		}
		else
			throw("Can't find build file make sure args are correct. Example: haxelib run basis build.xml");
	}
	
	public function build():Void
	{
		try
		{
			_settings = createSettings(_settingsDirectory + _settingsFileName);
			_settings.retrieve(getSettings_complete, getSettings_error);
		}
		catch(error:String)
		{
			endWithError(error);
		}
	}
	
	private function getSettings_complete(target:Target):Void
	{
		for(childTarget in target.subTargets)
		{
			if(childTarget.hasSetting(Target.TYPE))
			{
				switch(childTarget.getSetting(Target.TYPE).toLowerCase())
				{
					case "apple":
						Sys.command( "haxelib", ["run", "BasisApple", _settingsDirectory + _settingsFileName]);
				
					case "android":
						Sys.command( "haxelib", ["run", "BasisAndroid", _settingsDirectory + _settingsFileName]);
				}
			}
			else
				neko.Lib.println("No type for target: " + target.getSetting(Target.NAME));
			
			var buildPath:String = childTarget.getSetting(Target.BUILD_DIR);
			if(!FileSystem.exists(buildPath))
				FileSystem.createDirectory(buildPath);
		}
	}
	
	private function createSettings(path:String):ISettings
	{
		return new XmlSettings(path);
	}
	
	private function getSettings_error(error:String):Void
	{
		endWithError(error);
	}
	
	private function endWithError(error:String):Void
	{
		neko.Lib.println(error);
	}
}
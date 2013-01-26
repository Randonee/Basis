package basis;

import basis.settings.ISettings;
import basis.settings.XmlSettings;
import basis.settings.Target;
import sys.FileSystem;


class BuildTool
{
	private var _settings:ISettings;
	private var _settingsPath:String;
	
	public function new(settingsPath:String):Void
	{
		_settingsPath = settingsPath;
	}
	
	public function build():Void
	{
		try
		{
			_settings = createSettings(_settingsPath);
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
						Sys.command("haxelib", ["run", "BasisApple", _settingsPath]);
				
					case "android":
						Sys.command("haxelib", ["run", "BasisAndroid", _settingsPath]);
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
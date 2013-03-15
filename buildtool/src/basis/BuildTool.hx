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
	private var _buildTargetName:String;
	
	public function new():Void
	{
		var args:Array<String> = Sys.args();
		if(args.length == 3)
		{
			_buildTargetName = args[1];
			var settingsPath = FileUtil.cleanPath(args[0]);
			var index:Int = settingsPath.lastIndexOf("/");
			if(index >= 0)
			{
				_settingsFileName = settingsPath.substring(index);
				
				if(args[0].indexOf("/") == 0 || args[0].indexOf(":") > 0)
					_settingsDirectory = settingsPath.substring(0, index);
				else
					_settingsDirectory = args[2] + "/" + settingsPath.substring(0, index);
			}
			else
			{
				_settingsDirectory = args[2];
				_settingsFileName = args[0];
			}
			if(!FileSystem.exists(_settingsDirectory))
				throw("Build file not found: " + _settingsDirectory);
				
			Sys.setCwd(_settingsDirectory);
		}
		else
			throw("Not enough arguments. Example: haxelib run basis build.xml targetName");
	}
	
	public function build():Void
	{
		_settings = createSettings(_settingsDirectory + _settingsFileName);
		_settings.retrieve(getSettings_complete, getSettings_error);
	}
	
	private function getSettings_complete(target:Target):Void
	{
		var buildTarget:Target = target.getTargetWithName(_buildTargetName);
		if(buildTarget == null)
			throw("Target not found: "+ _buildTargetName);
			
		compileTarget(buildTarget);
		
	}
	
	private function compileTarget(target:Target):Void
	{
		if(target.hasSetting(Target.TYPE))
		{
			switch(target.getSetting(Target.TYPE).toLowerCase())
			{
				case "apple":
					Sys.command( "haxelib", ["run", "BasisApple", _settingsDirectory + _settingsFileName, target.name]);
			
				case "android":
					Sys.command( "haxelib", ["run", "BasisAndroid", _settingsDirectory + _settingsFileName, target.name]);
			}
		}
		else
		{
			for(childTarget in target.subTargets)
				compileTarget(target);
		}
	}
	
	private function createSettings(path:String):ISettings
	{
		return new XmlSettings(path);
	}
	
	private function getSettings_error(error:String):Void
	{
		throw(error);
	}
}
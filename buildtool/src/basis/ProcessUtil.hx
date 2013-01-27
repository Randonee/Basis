
package basis;

import sys.FileSystem;
import haxe.io.Path;


//This is taken form nme ProcessHelper
class ProcessUtil
{
	public static function runCommand (path:String, command:String, args:Array <String>, safeExecute:Bool = true, ignoreErrors:Bool = false):Void
	{
		if (safeExecute)
		{
			try
			{
				if (path != "" && !FileSystem.exists (FileSystem.fullPath (new Path (path).dir)))
				{
					throw("The specified target path \"" + path + "\" does not exist");
				}
				_runCommand (path, command, args);
			}
			catch (e:Dynamic)
			{
				if (!ignoreErrors)
					throw(e);
			}
		}
		else
		{
			_runCommand (path, command, args);
		}
	}
	
	
	private static function _runCommand (path:String, command:String, args:Array<String>)
	{
		var oldPath:String = "";
		
		if (path != "")
		{
			oldPath = Sys.getCwd();
			Sys.setCwd (path);
		}
		
		var result:Dynamic = Sys.command (command, args);
		
		if (oldPath != "")
			Sys.setCwd (oldPath);
		
		if (result != 0)
			throw ("Error running: " + command + " " + args.join (" ") + " [" + path + "]");
	}
	
}
package basis;

import sys.FileSystem;
import neko.Lib;
import sys.io.Process;

class Util
{
	static public function deleteDirectoryRecursive(directoryName:String):Void 
	{ 
 		for (item in FileSystem.readDirectory(directoryName)) 
        { 
                var path:String = directoryName + '/' + item; 
        
                if (FileSystem.isDirectory(path)) 
                { 
                        deleteDirectoryRecursive(path); 
                } 
                else 
                { 
                        FileSystem.deleteFile(path); 
                } 
        } 
        
        if (FileSystem.exists(directoryName) && FileSystem.isDirectory(directoryName)) 
        { 
                FileSystem.deleteDirectory(directoryName); 
        } 
	} 
	
	static public function createDirectory(path:String):Void
	{
		var parts:Array<String> = path.split("/");
		
		var currDir:String = "";
		for(part in parts)
		{
			currDir += part + "/";
			if(!FileSystem.exists(currDir))
				FileSystem.createDirectory(currDir);
		}
	}
	
	static public function getFileExtention(path:String):String
	{
		var index:Int = path.length-1;
		while(index >= 0)
		{
			if(path.charAt(index) == ".")
				return path.substring(index+1);
			--index;
		}
		
		return "";
	}
	
	
	public static function getHaxelib (library:String):String
	{
		var proc = new Process ("haxelib", ["path", library ]);
		var result = "";
		
		try
		{
			while (true)
			{
				var line = proc.stdout.readLine ();
				if (line.substr (0,1) != "-")
				{
					result = line;
					break;
				}
			}
		}
		catch (e:Dynamic) { };
		
		proc.close();
		
		//Lib.println ("Found " + library + " at " + result );
		//trace("Found " + haxelib + " at " + srcDir );
		
		if (result == "")
		{
			throw ("Could not find haxelib path  " + library + " - perhaps you need to install it?");
		}
		return result;
	}
}
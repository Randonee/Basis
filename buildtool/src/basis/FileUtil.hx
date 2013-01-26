package basis;

import sys.FileSystem;
import neko.Lib;
import sys.io.Process;
import sys.io.File;
import sys.io.FileOutput;
import haxe.io.Path;
import haxe.Template;

class FileUtil
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
		return Path.extension(path);
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
		
		if (result == "")
		{
			throw ("Could not find haxelib path  " + library + " - perhaps you need to install it?");
		}
		return result;
	}
	
	public static function read(path : String) : Array<String>
	{
		return sys.FileSystem.readDirectory(path);
	}
	
	public static function copyInto(sourcePath : String, destinationPath : String, ?settings:Dynamic=null, ?ifNewer:Bool=false) : Void 
	{
		privateCopyInto(sourcePath, destinationPath, settings, ifNewer);
	}
	
	
	private static function privateCopyInto(source:String, destination:String, ?settings:Dynamic=null, ?ifNewer:Bool=false) : Void
	{
		if(!sys.FileSystem.exists(destination))
			FileSystem.createDirectory(destination);
		
		var items = read(source);
		
		for(itemName in items)
		{
			var itemPath = source + "/" + itemName;
			
			if(itemName.charAt(0) != ".")
			{
				if(FileSystem.isDirectory(itemPath))
				{
					privateCopyInto(itemPath, destination + "/" + itemName, settings, ifNewer);
				} 
				else 
				{	
					copyFile(itemPath, destination + "/" + itemName, settings, ifNewer);	
				}
			}
		}	
	}
	
	
	public static function copyFile (source:String, destination:String, ?settings:Dynamic=null, ?ifNewer:Bool=false)
	{
		var extension:String = Path.extension (source);
		if (settings != null &&
            (extension == "xml" ||
             extension == "java" ||
             extension == "hx" ||
             extension == "hxml" ||
			 extension == "html" || 
             extension == "ini" ||
             extension == "gpe" ||
             extension == "pch" ||
             extension == "pbxproj" ||
             extension == "plist" ||
             extension == "json" ||
             extension == "cpp" ||
             extension == "mm" ||
             extension == "properties"))
       {
			var fileContents:String = File.getContent (source);
			var template:Template = new Template (fileContents);
			var result:String = template.execute (settings);
			var fileOutput:FileOutput = File.write (destination, true);
			fileOutput.writeString (result);
			fileOutput.close ();
			
		}
		else
		{
			if(!ifNewer || (ifNewer && isNewer(source, destination)) )
				File.copy(source, destination);
		}
	}
	
	
	public static function isNewer (source:String, destination:String):Bool
	{
		if (source == null || !FileSystem.exists (source))
		{
			return false;
		}
		
		if (FileSystem.exists (destination))
		{
			if (FileSystem.stat (source).mtime.getTime () < FileSystem.stat (destination).mtime.getTime ())
			{
				return false;
			}
		}
		return true;
	}
	
}
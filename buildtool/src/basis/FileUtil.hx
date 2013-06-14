package basis;

import sys.FileSystem;
import neko.Lib;
import sys.io.Process;
import sys.io.File;
import sys.io.FileOutput;
import haxe.io.Path;
import haxe.Template;

/**
* Much of this code was modified from NME helpers
**/
class FileUtil
{
	static public function cleanPath(path:String):String
	{
		path = StringTools.replace(path, '\\', '/');
		path = StringTools.replace(path, '//', '/');
		while(path.charAt(path.length-1) == "/" && path.length > 0)
			path = path.substring(0, path.length-1);
		return path;
	}

	static public function deleteDirectoryRecursive(directoryName:String):Void 
	{
		directoryName = cleanPath(directoryName);
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
	
	static public function getFileExtention(path:String):String
	{
		return Path.extension(path);
	}
	
	public static function read(path : String) : Array<String>
	{
		return sys.FileSystem.readDirectory(path);
	}
	
	
	/**
	* Creates a directory.
	* If a directory in the path does not exist it will be created
	**/
	static public function createDirectory(path:String):Void
	{
		path = cleanPath(path);
		var parts:Array<String> = path.split("/");
		
		var currDir:String = "";
		for(a in 0...parts.length)
		{
			if(a != 0)
				currDir += "/";
			currDir += parts[a];
			if(!FileSystem.exists(currDir))
				FileSystem.createDirectory(currDir);
		}
	}
	
	/**
	* gets a path to a haxelib
	* 
	* @param library name of haxelib
	**/
	public static function getHaxelib(library:String):String
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
	
	/**
	* Copies contents of one directoy into another. If the destination directory does not exist it will be created
	* 
	* @param sourcePath source directory
	* @param destinationPath destination directory
	* @param settings If set each file will be treated as a haxe template and the settings will be applied.
	* @param ifNewer only copy if the source is newer than the destination.
	**/
	public static function copyInto(sourcePath : String, destinationPath : String, ?settings:Dynamic=null, ?ifNewer:Bool=false) : Void 
	{
		privateCopyInto(sourcePath, destinationPath, settings, ifNewer);
	}
	
	/**
	* Copies a file
	* 
	* @param source source file
	* @param destination destination file
	* @param settings If set the file will be treated as a haxe template and the settings will be applied.
	* @param ifNewer only copy if the source is newer than the destination.
	**/
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
             extension == "xib" ||
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
	
	/**
	* Checks if file is newer than another
	* 
	* @param source source file
	* @param destination destination file
	**/
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
	
	
	private static function privateCopyInto(source:String, destination:String, ?settings:Dynamic=null, ?ifNewer:Bool=false) : Void
	{
		source = cleanPath(source);
		destination = cleanPath(destination);
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
	
}
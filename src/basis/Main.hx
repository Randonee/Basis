package basis;

import basis.xml.ProjectXML;
import sys.FileSystem;

class Main
{
	static public function main():Void
	{
		try
		{
			var project:ProjectXML = new ProjectXML(Sys.args()[0]);
			project.parse();
			
			for(target in project.targets)
			{
				switch(Std.string(target.type))
				{
					case Std.string(TargetType.Apple):
						Sys.command("haxelib", ["run", "BasisApple", project.xmlPath]);
				
					case Std.string(TargetType.Android):
						Sys.command("haxelib", ["run", "BasisAndroid", project.xmlPath]);
				}
			}
			
			if(!FileSystem.exists(project.baseBuildPath))
				FileSystem.createDirectory(project.baseBuildPath);
		}
		catch(error:String)
		{
			neko.Lib.println(error);
		}
	}
}
package android.r;

import haxe.macro.Expr;
import haxe.macro.Context;
import sys.FileSystem;
import sys.io.File;
import sys.io.FileOutput;

class RMacros {
    @:macro public static function buildID() : Array<Field>
    {        
        var pos = haxe.macro.Context.currentPos();
        var fields = haxe.macro.Context.getBuildFields();
        var tint = TPath({ pack : [], name : "Int", params : [], sub : null });
      
      	var layoutDir:String = "res/layout";
      
      	if(FileSystem.exists(layoutDir))
		{
			var files:Array<String> = FileSystem.readDirectory(layoutDir);
			for(a in 0...files.length)
			{
				if(!FileSystem.isDirectory(layoutDir + "/" +files[a]))
				{
					var fileContent:String = File.getContent(layoutDir + "/" +files[a]);
					var xml = Xml.parse(fileContent).firstElement();
					
					for( child in xml )
					{
						if( child.nodeType == Xml.Element && child.exists("android:id") && child.get("android:id").indexOf("@+id/") == 0)
							fields.push({ name : child.get("android:id").substring(5), doc : null, meta : [], access : [AStatic, APublic], kind : FVar(tint,null), pos : pos });
					}
				}
			}
		}
      
        return fields;
    }
    
    @:macro public static function buildLayout() : Array<Field>
    {
    	var pos = haxe.macro.Context.currentPos();
        var fields = haxe.macro.Context.getBuildFields();
        var tint = TPath({ pack : [], name : "Int", params : [], sub : null });
    
    	var layoutDir:String = "res/layout";
      	if(FileSystem.exists(layoutDir))
		{
			var files:Array<String> = FileSystem.readDirectory(layoutDir);
			for(a in 0...files.length)
			{
				if(!FileSystem.isDirectory(layoutDir + "/" +files[a]))
				{
				
					var fileContent:String = File.getContent(layoutDir + "/" +files[a]);
					var xml = Xml.parse(fileContent).firstElement();
				
					//remove file extension
					var reg : EReg = ~/\..*(?!.*\.)/;
					fields.push({ name : reg.replace(files[a], ""), doc : null, meta : [], access : [AStatic, APublic], kind : FVar(tint,null), pos : pos });
				}
			}
		}
		return fields;
    }
    
    
    @:macro public static function buildString() : Array<Field>
    {
    	var pos = haxe.macro.Context.currentPos();
        var fields = haxe.macro.Context.getBuildFields();
        var tint = TPath({ pack : [], name : "Int", params : [], sub : null });
    
	    var valuesDir:String = "res/values";
		
		if(FileSystem.exists(valuesDir))
		{
			var names:Array<String> = [];
			var files:Array<String> = FileSystem.readDirectory(valuesDir);
			for(a in 0...files.length)
			{
			
				var fileContent:String = File.getContent(valuesDir + "/" +files[a]);
				var xml = Xml.parse(fileContent);
				var fast = new haxe.xml.Fast(xml.firstElement());
				
				for( s in fast.nodes.string )
					fields.push({ name : s.att.name, doc : null, meta : [], access : [AStatic, APublic], kind : FVar(tint,null), pos : pos });
			}
		}
		return fields;
	}
    
}
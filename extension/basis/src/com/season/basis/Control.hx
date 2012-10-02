package com.season.basis;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#else
import nme.Lib;
#end

class Control extends BasisView
{
	public static inline var TYPE:Int = 2;
	
	public function new()
	{
		super ();
	}
	
	override private function init():Void
	{
		_tag = ViewManager.createView(TYPE, this);
	}
}
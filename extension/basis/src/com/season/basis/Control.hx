package com.season.basis;

#if ios
import cpp.Lib;
#elseif neko
import neko.Lib;
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
		_tag = BasisViewManager.createView(TYPE);
	}
}
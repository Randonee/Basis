package com.season.basis;

#if ios
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

class ImageView extends BasisView
{
	public static inline var TYPE:Int = 5;

	public function new()
	{
		super ();
	}
	
	override private function init():Void
	{
		_tag = BasisViewManager.createView(TYPE);
	}
}
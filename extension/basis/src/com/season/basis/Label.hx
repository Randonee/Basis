package com.season.basis;

#if ios
import cpp.Lib;
#elseif neko
import neko.Lib;
#else
import nme.Lib;
#end

class Label extends BasisView
{
	public static inline var TYPE:Int = 1;

	public function new()
	{
		super ();
	}
	
	override private function init():Void
	{
		_tag = ViewManager.createView(TYPE);
	}
	
	
	public var text(getText, setText) : String;
	private function setText( value : String ):String{cpp_label_setText(_tag, value); return cpp_label_getText(_tag);}
	private function getText():String {return cpp_label_getText(_tag);}
	
	
	#if ios
	private static var cpp_label_setText = Lib.load ("basis", "label_setText", 2);
	private static var cpp_label_getText = Lib.load ("basis", "label_getText", 1);
	#end
	
}
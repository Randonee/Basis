package com.season.basis;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#else
import nme.Lib;
#end

class TextField extends Control
{
	public static inline var TYPE:Int = 4;

	public function new()
	{
		super ();
	}
	
	override private function init():Void
	{
		_tag = ViewManager.createView(TYPE, this);
	}
	
	public var text(getText, setText) : String;
	private function setText( value : String ):String{cpp_textField_setText(_tag, value); return cpp_textField_getText(_tag);}
	private function getText():String {return cpp_textField_getText(_tag);}
	
	
	#if cpp
	private static var cpp_textField_setText = Lib.load ("viewmanager", "textField_setText", 2);
	private static var cpp_textField_getText = Lib.load ("viewmanager", "textField_getText", 1);
	#end
	
	
}
package com.season.basis;

#if ios
import cpp.Lib;
#elseif neko
import neko.Lib;
#else
import nme.Lib;
#end

class Button extends Control
{
	public static inline var TYPE:Int = 3;

	public function new()
	{
		super ();
	}
	
	override private function init():Void
	{
		_tag = ViewManager.createView(TYPE);
	}
	
	public function setLabel(text:String):Void
	{
		#if ios
			cpp_button_setLabel(_tag, text);
		#end
	}
	
	public function setImageForState(assetName:String):Void
	{
		#if ios
			cpp_button_setImageForState(_tag, assetName);
		#end
	}
	
	
	#if ios
	private static var cpp_button_setLabel = Lib.load ("basis", "button_setLabel", 2);
	private static var cpp_button_setImageForState = Lib.load ("basis", "button_setImageForState", 2);
	#end
	
}
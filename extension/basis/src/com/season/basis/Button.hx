package com.season.basis;


#if ios
	import cpp.Lib;
#elseif android
	import com.season.basis.android.BaseActivity;
	import com.season.basis.android.Button;
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
		#if ios
			_tag = BasisViewManager.createView(TYPE);
		#elseif android
			_nativeView = new com.season.basis.android.Button(BaseActivity.getInstance());
		#end
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
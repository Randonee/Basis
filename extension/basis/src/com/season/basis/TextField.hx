package com.season.basis;

#if ios
	import cpp.Lib;
#elseif android
	import com.season.basis.android.BaseActivity;
	import com.season.basis.android.EditText;
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
		#if ios
			_tag = BasisViewManager.createView(TYPE);
		#elseif android
			_nativeView = new EditText(BaseActivity.getInstance());
		#end
	}
	
	public var text(getText, setText) : String;
	private function setText( value : String ):String
	{
		#if ios
			cpp_textField_setText(_tag, value);
			return cpp_textField_getText(_tag);
		#elseif android
			cast(_nativeView, EditText).setText(value);
			return value;
		#end
	}
	
	private function getText():String 
	{
		#if ios
			return cpp_textField_getText(_tag);
		#elseif android
			return "";
		#end
	}
	
	
	#if ios
	private static var cpp_textField_setText = Lib.load ("viewmanager", "textField_setText", 2);
	private static var cpp_textField_getText = Lib.load ("viewmanager", "textField_getText", 1);
	#end
	
	
}
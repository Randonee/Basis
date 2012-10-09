package com.season.basis;

#if ios
	import cpp.Lib;
#elseif android
	import com.season.basis.android.BaseActivity;
	import com.season.basis.android.TextView;
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
		#if ios
			_tag = BasisViewManager.createView(TYPE);
		#elseif android
			_nativeView = new TextView(BaseActivity.getInstance());
		#end
	}
	
	
	public var text(getText, setText) : String;
	private function setText( value : String ):String
	{
		#if ios
			cpp_label_setText(_tag, value);
			return cpp_label_getText(_tag);
		#elseif android
			cast(_nativeView, TextView).setText(value);
			return value;
		#end
		
	}
	private function getText():String
	{
		#if ios
			return cpp_label_getText(_tag);
		#end
		
		#if android
			return "";
		#end
	}
	
	
	#if ios
	private static var cpp_label_setText = Lib.load ("basis", "label_setText", 2);
	private static var cpp_label_getText = Lib.load ("basis", "label_getText", 1);
	#end
	
}
package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIAlertView extends UIView
{
	public function new(?type:Int = 8)
	{
		super(type);
	}
	
	
	public var alertViewStyle(getAlertViewStyle, setAlertViewStyle) : Int;
	private function setAlertViewStyle(value:Int):Int
	{
		cpp_uialertview_setAlertViewStyle(_tag, value);
		return cpp_uialertview_getAlertViewStyle(_tag);
	}
	private static var cpp_uialertview_setAlertViewStyle = Lib.load("basis", "uialertview_setAlertViewStyle", 2);
	private function getAlertViewStyle():Int
	{
		return cpp_uialertview_getAlertViewStyle(_tag);
	}
	private static var cpp_uialertview_getAlertViewStyle = Lib.load("basis", "uialertview_getAlertViewStyle", 1);
	public var delegate(getDelegate, setDelegate) : UIView;
	private function setDelegate(value:UIView):UIView
	{
		cpp_uialertview_setDelegate(_tag, value);
		return cpp_uialertview_getDelegate(_tag);
	}
	private static var cpp_uialertview_setDelegate = Lib.load("basis", "uialertview_setDelegate", 2);
	private function getDelegate():UIView
	{
		return cpp_uialertview_getDelegate(_tag);
	}
	private static var cpp_uialertview_getDelegate = Lib.load("basis", "uialertview_getDelegate", 1);
	public var message(getMessage, setMessage) : String;
	private function setMessage(value:String):String
	{
		cpp_uialertview_setMessage(_tag, value);
		return cpp_uialertview_getMessage(_tag);
	}
	private static var cpp_uialertview_setMessage = Lib.load("basis", "uialertview_setMessage", 2);
	private function getMessage():String
	{
		return cpp_uialertview_getMessage(_tag);
	}
	private static var cpp_uialertview_getMessage = Lib.load("basis", "uialertview_getMessage", 1);
	public var title(getTitle, setTitle) : String;
	private function setTitle(value:String):String
	{
		cpp_uialertview_setTitle(_tag, value);
		return cpp_uialertview_getTitle(_tag);
	}
	private static var cpp_uialertview_setTitle = Lib.load("basis", "uialertview_setTitle", 2);
	private function getTitle():String
	{
		return cpp_uialertview_getTitle(_tag);
	}
	private static var cpp_uialertview_getTitle = Lib.load("basis", "uialertview_getTitle", 1);
	public var visible(getVisible, null) : Bool;
		private function getVisible():Bool
	{
		return cpp_uialertview_getVisible(_tag);
	}
	private static var cpp_uialertview_getVisible = Lib.load("basis", "uialertview_getVisible", 1);

	public function show():Void
	{
		cpp_uialertview_show(_tag);
	}
	private static var cpp_uialertview_show = Lib.load("basis", "uialertview_show", 1);

}
package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UITextView extends UIScrollView
{
	public function new(?type:Int = 30)
	{
		super(type);
	}
	
	
	public var allowsEditingTextAttributes(getAllowsEditingTextAttributes, setAllowsEditingTextAttributes) : Bool;
	private function setAllowsEditingTextAttributes(value:Bool):Bool
	{
		cpp_uitextview_setAllowsEditingTextAttributes(_tag, value);
		return cpp_uitextview_getAllowsEditingTextAttributes(_tag);
	}
	private static var cpp_uitextview_setAllowsEditingTextAttributes = Lib.load("basis", "uitextview_setAllowsEditingTextAttributes", 2);
	private function getAllowsEditingTextAttributes():Bool
	{
		return cpp_uitextview_getAllowsEditingTextAttributes(_tag);
	}
	private static var cpp_uitextview_getAllowsEditingTextAttributes = Lib.load("basis", "uitextview_getAllowsEditingTextAttributes", 1);
	public var clearsOnInsertion(getClearsOnInsertion, setClearsOnInsertion) : Bool;
	private function setClearsOnInsertion(value:Bool):Bool
	{
		cpp_uitextview_setClearsOnInsertion(_tag, value);
		return cpp_uitextview_getClearsOnInsertion(_tag);
	}
	private static var cpp_uitextview_setClearsOnInsertion = Lib.load("basis", "uitextview_setClearsOnInsertion", 2);
	private function getClearsOnInsertion():Bool
	{
		return cpp_uitextview_getClearsOnInsertion(_tag);
	}
	private static var cpp_uitextview_getClearsOnInsertion = Lib.load("basis", "uitextview_getClearsOnInsertion", 1);
	public var editable(getEditable, setEditable) : Bool;
	private function setEditable(value:Bool):Bool
	{
		cpp_uitextview_setEditable(_tag, value);
		return cpp_uitextview_getEditable(_tag);
	}
	private static var cpp_uitextview_setEditable = Lib.load("basis", "uitextview_setEditable", 2);
	private function getEditable():Bool
	{
		return cpp_uitextview_getEditable(_tag);
	}
	private static var cpp_uitextview_getEditable = Lib.load("basis", "uitextview_getEditable", 1);
	public var text(getText, setText) : String;
	private function setText(value:String):String
	{
		cpp_uitextview_setText(_tag, value);
		return cpp_uitextview_getText(_tag);
	}
	private static var cpp_uitextview_setText = Lib.load("basis", "uitextview_setText", 2);
	private function getText():String
	{
		return cpp_uitextview_getText(_tag);
	}
	private static var cpp_uitextview_getText = Lib.load("basis", "uitextview_getText", 1);

	public function hasText():Bool
	{
		return cpp_uitextview_hasText(_tag);
	}
	private static var cpp_uitextview_hasText = Lib.load("basis", "uitextview_hasText", 1);

}
package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;

class UIView
{
	public var tag(getTag, setTag) : Int;
	private function setTag( value : Int ):Int{_tag = value; return _tag;}
	private function getTag():Int {return _tag;}
	public var superview(getSuperView, null) : UIView;
	
	private function getSuperView():UIView 
	{
		var view:UIView = new UIView();
		view.tag = cpp_getSuperview(tag);
		return view;
	}
	
	public var x(getX, setX) : Float;
	private function getX():Float
	{
		return cpp_call_view_get_x(tag);
	}
	private function setX(value:Float):Float
	{
		cpp_call_view_set_x(tag, value);
		return cpp_call_view_get_x(tag);
	}
	
	public var y(getY, setY) : Float;
	private function getY():Float 
	{
		return cpp_call_view_get_y(tag);
	}
	private function setY(value:Float):Float
	{
		return cpp_call_view_get_y(tag);
	}
	
	public var width(getWidth, setWidth) : Float;
	private function getWidth():Float
	{
		return cpp_call_view_get_width(tag);
	}
	
	private function setWidth(value:Float):Float
	{
		cpp_call_view_set_width(tag, value);
		return cpp_call_view_get_width(tag);
	}
	
	public var height(getHeight, setHeight) : Float;
	private function getHeight():Float
	{
		return cpp_call_view_get_height(tag);
	}
	
	private function setHeight(value:Float):Float
	{
		cpp_call_view_set_height(tag, value);
		return cpp_call_view_get_height(tag);
	}
	
	private var _tag:Int;
	private var _type:Int;
	
	public function new(?type:Int = 0)
	{
		_type = type;
		init();
	}
	
	private function init():Void
	{
		_tag = ViewManager.createView(_type);
	}
	
	public function addEventListener(type:String, handler:UIView->String->Void):Void
	{
		ViewManager.addEventListener(type, this, handler);
	}
	
	public function addSubview(view:UIView):Void
	{
		cpp_addSubview(_tag, view.tag);
	}
	
	public function removeSubview(view:UIView):Void
	{
		cpp_removeSubview(_tag, view.tag);
	}
	
	private static var cpp_addSubview = Lib.load ("basis", "view_addSubview", 2);
	private static var cpp_getSuperview = Lib.load ("basis", "view_getSuperview", 1);
	private static var cpp_removeSubview = Lib.load ("basis", "view_removeSubview", 2);
	
	private static var cpp_call_view_set_x = Lib.load ("basis", "view_setFrameX", 2);
	private static var cpp_call_view_get_x = Lib.load ("basis", "view_getFrameX", 1);
	private static var cpp_call_view_set_y = Lib.load ("basis", "view_setFrameY", 2);
	private static var cpp_call_view_get_y = Lib.load ("basis", "view_getFrameY", 1);
	private static var cpp_call_view_set_width = Lib.load ("basis", "view_setFrameWidth", 2);
	private static var cpp_call_view_get_width = Lib.load ("basis", "view_getFrameWidth", 1);
	private static var cpp_call_view_set_height = Lib.load ("basis", "view_setFrameHeight", 2);
	private static var cpp_call_view_get_height = Lib.load ("basis", "view_getFrameHeight", 1);
	
}
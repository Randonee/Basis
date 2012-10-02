package com.season.basis;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#else
import nme.Lib;
#end

class BasisView
{
	public static inline var TYPE:Int = 0;
	private static var _locUpdateCB:Dynamic;
	
	
	public var tag(getTag, setTag) : Int;
	private function setTag( value : Int ):Int{_tag = value; return _tag;}
	private function getTag():Int {return _tag;}
	
	public var superview(getSuperView, null) : BasisView;
	private function getSuperView():BasisView 
	{
		#if cpp
			var view:BasisView = new BasisView();
			view.tag = cpp_getSuperview(tag);
			return view;
		#end
	}
	
	public var x(getX, setX) : Float;
	private function getX():Float
	{
		#if cpp
			return cpp_call_view_get_x(tag);
		#end	
	}
	private function setX(value:Float):Float
	{
		#if cpp
			cpp_call_view_set_x(tag, value);
			return cpp_call_view_get_x(tag);
		#end
	}
	
	public var y(getY, setY) : Float;
	private function getY():Float 
	{
		#if cpp
			return cpp_call_view_get_y(tag);
		#end	
	}
	private function setY(value:Float):Float
	{
		#if cpp
			cpp_call_view_set_y(tag, value);
			return cpp_call_view_get_y(tag);
		#end	
	}
	
	public var width(getWidth, setWidth) : Float;
	private function getWidth():Float
	{
		#if cpp
			return cpp_call_view_get_width(tag);
		#end	
	}
	private function setWidth(value:Float):Float
	{
		#if cpp
			cpp_call_view_set_width(tag, value);
			return cpp_call_view_get_width(tag);
		#end
	}
	
	public var height(getHeight, setHeight) : Float;
	private function getHeight():Float
	{
		#if cpp
			return cpp_call_view_get_height(tag);
		#end
	}
	private function setHeight(value:Float):Float
	{
		#if cpp
			cpp_call_view_set_height(tag, value);
			return cpp_call_view_get_height(tag);
		#end
	}
	
	private var _tag:Int;
	
	public function new()
	{
		init();
	}
	
	private function init():Void
	{
		_tag = ViewManager.createView(TYPE, this);
	}
	
	
	public function addEventListener(type:String, handler:BasisView->String->Void):Void
	{
		ViewManager.addEventListener(type, this, handler);
	}
	
	public function addSubview(view:BasisView):Void
	{
		#if cpp
			cpp_addSubview(_tag, view.tag);
		#end
	}
	
	public function removeSubview(view:BasisView):Void
	{
		#if cpp
			cpp_removeSubview(_tag, view.tag);
		#end
	}
	
	#if cpp
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
	#end
	
	#if java
		private static var asdf = Lib.load ("basis", "ddddd", 2);
	#end
}
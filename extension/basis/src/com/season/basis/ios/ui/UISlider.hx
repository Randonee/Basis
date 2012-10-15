package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UISlider extends UIControl
{
	public function new(?type:Int = 23)
	{
		super(type);
	}
	
	
	public var continuous(getContinuous, setContinuous) : Bool;
	private function setContinuous(value:Bool):Bool
	{
		cpp_uislider_setContinuous(_tag, value);
		return cpp_uislider_getContinuous(_tag);
	}
	private static var cpp_uislider_setContinuous = Lib.load("basis", "uislider_setContinuous", 2);
	private function getContinuous():Bool
	{
		return cpp_uislider_getContinuous(_tag);
	}
	private static var cpp_uislider_getContinuous = Lib.load("basis", "uislider_getContinuous", 1);

	public function maximumValueImageRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uislider_maximumValueImageRectForBounds(_tag, arg1);
	}
	private static var cpp_uislider_maximumValueImageRectForBounds = Lib.load("basis", "uislider_maximumValueImageRectForBounds", 2);

	public function minimumValueImageRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uislider_minimumValueImageRectForBounds(_tag, arg1);
	}
	private static var cpp_uislider_minimumValueImageRectForBounds = Lib.load("basis", "uislider_minimumValueImageRectForBounds", 2);

	public function trackRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uislider_trackRectForBounds(_tag, arg1);
	}
	private static var cpp_uislider_trackRectForBounds = Lib.load("basis", "uislider_trackRectForBounds", 2);

}
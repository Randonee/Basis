package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIStepper extends UIControl
{
	public function new(?type:Int = 24)
	{
		super(type);
	}
	
	
	public var autorepeat(getAutorepeat, setAutorepeat) : Bool;
	private function setAutorepeat(value:Bool):Bool
	{
		cpp_uistepper_setAutorepeat(_tag, value);
		return cpp_uistepper_getAutorepeat(_tag);
	}
	private static var cpp_uistepper_setAutorepeat = Lib.load("basis", "uistepper_setAutorepeat", 2);
	private function getAutorepeat():Bool
	{
		return cpp_uistepper_getAutorepeat(_tag);
	}
	private static var cpp_uistepper_getAutorepeat = Lib.load("basis", "uistepper_getAutorepeat", 1);
	public var continuous(getContinuous, setContinuous) : Bool;
	private function setContinuous(value:Bool):Bool
	{
		cpp_uistepper_setContinuous(_tag, value);
		return cpp_uistepper_getContinuous(_tag);
	}
	private static var cpp_uistepper_setContinuous = Lib.load("basis", "uistepper_setContinuous", 2);
	private function getContinuous():Bool
	{
		return cpp_uistepper_getContinuous(_tag);
	}
	private static var cpp_uistepper_getContinuous = Lib.load("basis", "uistepper_getContinuous", 1);
	public var wraps(getWraps, setWraps) : Bool;
	private function setWraps(value:Bool):Bool
	{
		cpp_uistepper_setWraps(_tag, value);
		return cpp_uistepper_getWraps(_tag);
	}
	private static var cpp_uistepper_setWraps = Lib.load("basis", "uistepper_setWraps", 2);
	private function getWraps():Bool
	{
		return cpp_uistepper_getWraps(_tag);
	}
	private static var cpp_uistepper_getWraps = Lib.load("basis", "uistepper_getWraps", 1);

}
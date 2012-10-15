package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UISwitch extends UIControl
{
	public function new(?type:Int = 25)
	{
		super(type);
	}
	
	
	public var on(getOn, setOn) : Bool;
	private function setOn(value:Bool):Bool
	{
		cpp_uiswitch_setOn(_tag, value);
		return cpp_uiswitch_getOn(_tag);
	}
	private static var cpp_uiswitch_setOn = Lib.load("basis", "uiswitch_setOn", 2);
	private function getOn():Bool
	{
		return cpp_uiswitch_getOn(_tag);
	}
	private static var cpp_uiswitch_getOn = Lib.load("basis", "uiswitch_getOn", 1);

}
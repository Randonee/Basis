package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIPageControl extends UIControl
{
	public function new(?type:Int = 14)
	{
		super(type);
	}
	
	
	public var defersCurrentPageDisplay(getDefersCurrentPageDisplay, setDefersCurrentPageDisplay) : Bool;
	private function setDefersCurrentPageDisplay(value:Bool):Bool
	{
		cpp_uipagecontrol_setDefersCurrentPageDisplay(_tag, value);
		return cpp_uipagecontrol_getDefersCurrentPageDisplay(_tag);
	}
	private static var cpp_uipagecontrol_setDefersCurrentPageDisplay = Lib.load("basis", "uipagecontrol_setDefersCurrentPageDisplay", 2);
	private function getDefersCurrentPageDisplay():Bool
	{
		return cpp_uipagecontrol_getDefersCurrentPageDisplay(_tag);
	}
	private static var cpp_uipagecontrol_getDefersCurrentPageDisplay = Lib.load("basis", "uipagecontrol_getDefersCurrentPageDisplay", 1);
	public var hidesForSinglePage(getHidesForSinglePage, setHidesForSinglePage) : Bool;
	private function setHidesForSinglePage(value:Bool):Bool
	{
		cpp_uipagecontrol_setHidesForSinglePage(_tag, value);
		return cpp_uipagecontrol_getHidesForSinglePage(_tag);
	}
	private static var cpp_uipagecontrol_setHidesForSinglePage = Lib.load("basis", "uipagecontrol_setHidesForSinglePage", 2);
	private function getHidesForSinglePage():Bool
	{
		return cpp_uipagecontrol_getHidesForSinglePage(_tag);
	}
	private static var cpp_uipagecontrol_getHidesForSinglePage = Lib.load("basis", "uipagecontrol_getHidesForSinglePage", 1);

	public function updateCurrentPageDisplay():Void
	{
		cpp_uipagecontrol_updateCurrentPageDisplay(_tag);
	}
	private static var cpp_uipagecontrol_updateCurrentPageDisplay = Lib.load("basis", "uipagecontrol_updateCurrentPageDisplay", 1);

}
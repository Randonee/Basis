package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UISegmentedControl extends UIControl
{
	public function new(?type:Int = 22)
	{
		super(type);
	}
	
	
	public var apportionsSegmentWidthsByContent(getApportionsSegmentWidthsByContent, setApportionsSegmentWidthsByContent) : Bool;
	private function setApportionsSegmentWidthsByContent(value:Bool):Bool
	{
		cpp_uisegmentedcontrol_setApportionsSegmentWidthsByContent(_tag, value);
		return cpp_uisegmentedcontrol_getApportionsSegmentWidthsByContent(_tag);
	}
	private static var cpp_uisegmentedcontrol_setApportionsSegmentWidthsByContent = Lib.load("basis", "uisegmentedcontrol_setApportionsSegmentWidthsByContent", 2);
	private function getApportionsSegmentWidthsByContent():Bool
	{
		return cpp_uisegmentedcontrol_getApportionsSegmentWidthsByContent(_tag);
	}
	private static var cpp_uisegmentedcontrol_getApportionsSegmentWidthsByContent = Lib.load("basis", "uisegmentedcontrol_getApportionsSegmentWidthsByContent", 1);
	public var momentary(getMomentary, setMomentary) : Bool;
	private function setMomentary(value:Bool):Bool
	{
		cpp_uisegmentedcontrol_setMomentary(_tag, value);
		return cpp_uisegmentedcontrol_getMomentary(_tag);
	}
	private static var cpp_uisegmentedcontrol_setMomentary = Lib.load("basis", "uisegmentedcontrol_setMomentary", 2);
	private function getMomentary():Bool
	{
		return cpp_uisegmentedcontrol_getMomentary(_tag);
	}
	private static var cpp_uisegmentedcontrol_getMomentary = Lib.load("basis", "uisegmentedcontrol_getMomentary", 1);

	public function removeAllSegments():Void
	{
		cpp_uisegmentedcontrol_removeAllSegments(_tag);
	}
	private static var cpp_uisegmentedcontrol_removeAllSegments = Lib.load("basis", "uisegmentedcontrol_removeAllSegments", 1);

}
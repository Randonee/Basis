package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIControl extends UIView
{
	public function new(?type:Int = 2)
	{
		super(type);
	}
	
	
	public var enabled(getEnabled, setEnabled) : Bool;
	private function setEnabled(value:Bool):Bool
	{
		cpp_uicontrol_setEnabled(_tag, value);
		return cpp_uicontrol_getEnabled(_tag);
	}
	private static var cpp_uicontrol_setEnabled = Lib.load("basis", "uicontrol_setEnabled", 2);
	private function getEnabled():Bool
	{
		return cpp_uicontrol_getEnabled(_tag);
	}
	private static var cpp_uicontrol_getEnabled = Lib.load("basis", "uicontrol_getEnabled", 1);
	public var highlighted(getHighlighted, setHighlighted) : Bool;
	private function setHighlighted(value:Bool):Bool
	{
		cpp_uicontrol_setHighlighted(_tag, value);
		return cpp_uicontrol_getHighlighted(_tag);
	}
	private static var cpp_uicontrol_setHighlighted = Lib.load("basis", "uicontrol_setHighlighted", 2);
	private function getHighlighted():Bool
	{
		return cpp_uicontrol_getHighlighted(_tag);
	}
	private static var cpp_uicontrol_getHighlighted = Lib.load("basis", "uicontrol_getHighlighted", 1);
	public var selected(getSelected, setSelected) : Bool;
	private function setSelected(value:Bool):Bool
	{
		cpp_uicontrol_setSelected(_tag, value);
		return cpp_uicontrol_getSelected(_tag);
	}
	private static var cpp_uicontrol_setSelected = Lib.load("basis", "uicontrol_setSelected", 2);
	private function getSelected():Bool
	{
		return cpp_uicontrol_getSelected(_tag);
	}
	private static var cpp_uicontrol_getSelected = Lib.load("basis", "uicontrol_getSelected", 1);
	public var touchInside(getTouchInside, null) : Bool;
		private function getTouchInside():Bool
	{
		return cpp_uicontrol_getTouchInside(_tag);
	}
	private static var cpp_uicontrol_getTouchInside = Lib.load("basis", "uicontrol_getTouchInside", 1);
	public var tracking(getTracking, null) : Bool;
		private function getTracking():Bool
	{
		return cpp_uicontrol_getTracking(_tag);
	}
	private static var cpp_uicontrol_getTracking = Lib.load("basis", "uicontrol_getTracking", 1);

}
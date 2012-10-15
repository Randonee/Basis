package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIPickerView extends UIView
{
	public function new(?type:Int = 15)
	{
		super(type);
	}
	
	
	public var showsSelectionIndicator(getShowsSelectionIndicator, setShowsSelectionIndicator) : Bool;
	private function setShowsSelectionIndicator(value:Bool):Bool
	{
		cpp_uipickerview_setShowsSelectionIndicator(_tag, value);
		return cpp_uipickerview_getShowsSelectionIndicator(_tag);
	}
	private static var cpp_uipickerview_setShowsSelectionIndicator = Lib.load("basis", "uipickerview_setShowsSelectionIndicator", 2);
	private function getShowsSelectionIndicator():Bool
	{
		return cpp_uipickerview_getShowsSelectionIndicator(_tag);
	}
	private static var cpp_uipickerview_getShowsSelectionIndicator = Lib.load("basis", "uipickerview_getShowsSelectionIndicator", 1);

	public function reloadAllComponents():Void
	{
		cpp_uipickerview_reloadAllComponents(_tag);
	}
	private static var cpp_uipickerview_reloadAllComponents = Lib.load("basis", "uipickerview_reloadAllComponents", 1);

}
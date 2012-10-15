package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIWindow extends UIView
{
	public function new(?type:Int = 32)
	{
		super(type);
	}
	
	
	public var keyWindow(getKeyWindow, null) : Bool;
		private function getKeyWindow():Bool
	{
		return cpp_uiwindow_getKeyWindow(_tag);
	}
	private static var cpp_uiwindow_getKeyWindow = Lib.load("basis", "uiwindow_getKeyWindow", 1);

	public function becomeKeyWindow():Void
	{
		cpp_uiwindow_becomeKeyWindow(_tag);
	}
	private static var cpp_uiwindow_becomeKeyWindow = Lib.load("basis", "uiwindow_becomeKeyWindow", 1);

	public function makeKeyAndVisible():Void
	{
		cpp_uiwindow_makeKeyAndVisible(_tag);
	}
	private static var cpp_uiwindow_makeKeyAndVisible = Lib.load("basis", "uiwindow_makeKeyAndVisible", 1);

	public function makeKeyWindow():Void
	{
		cpp_uiwindow_makeKeyWindow(_tag);
	}
	private static var cpp_uiwindow_makeKeyWindow = Lib.load("basis", "uiwindow_makeKeyWindow", 1);

	public function resignKeyWindow():Void
	{
		cpp_uiwindow_resignKeyWindow(_tag);
	}
	private static var cpp_uiwindow_resignKeyWindow = Lib.load("basis", "uiwindow_resignKeyWindow", 1);

}
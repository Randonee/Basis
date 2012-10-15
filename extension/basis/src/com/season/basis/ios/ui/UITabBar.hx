package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UITabBar extends UIView
{
	public function new(?type:Int = 26)
	{
		super(type);
	}
	
	

	public function endCustomizingAnimated(arg1:Bool):Bool
	{
		return cpp_uitabbar_endCustomizingAnimated(_tag, arg1);
	}
	private static var cpp_uitabbar_endCustomizingAnimated = Lib.load("basis", "uitabbar_endCustomizingAnimated", 2);

	public function isCustomizing():Bool
	{
		return cpp_uitabbar_isCustomizing(_tag);
	}
	private static var cpp_uitabbar_isCustomizing = Lib.load("basis", "uitabbar_isCustomizing", 1);

}
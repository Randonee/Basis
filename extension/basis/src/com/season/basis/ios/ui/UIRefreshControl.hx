package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIRefreshControl extends UIControl
{
	public function new(?type:Int = 19)
	{
		super(type);
	}
	
	
	public var refreshing(getRefreshing, null) : Bool;
		private function getRefreshing():Bool
	{
		return cpp_uirefreshcontrol_getRefreshing(_tag);
	}
	private static var cpp_uirefreshcontrol_getRefreshing = Lib.load("basis", "uirefreshcontrol_getRefreshing", 1);

	public function beginRefreshing():Void
	{
		cpp_uirefreshcontrol_beginRefreshing(_tag);
	}
	private static var cpp_uirefreshcontrol_beginRefreshing = Lib.load("basis", "uirefreshcontrol_beginRefreshing", 1);

	public function endRefreshing():Void
	{
		cpp_uirefreshcontrol_endRefreshing(_tag);
	}
	private static var cpp_uirefreshcontrol_endRefreshing = Lib.load("basis", "uirefreshcontrol_endRefreshing", 1);

}
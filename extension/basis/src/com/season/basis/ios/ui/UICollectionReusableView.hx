package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UICollectionReusableView extends UIView
{
	public function new(?type:Int = 9)
	{
		super(type);
	}
	
	
	public var reuseIdentifier(getReuseIdentifier, null) : String;
		private function getReuseIdentifier():String
	{
		return cpp_uicollectionreusableview_getReuseIdentifier(_tag);
	}
	private static var cpp_uicollectionreusableview_getReuseIdentifier = Lib.load("basis", "uicollectionreusableview_getReuseIdentifier", 1);

	public function prepareForReuse():Void
	{
		cpp_uicollectionreusableview_prepareForReuse(_tag);
	}
	private static var cpp_uicollectionreusableview_prepareForReuse = Lib.load("basis", "uicollectionreusableview_prepareForReuse", 1);

}
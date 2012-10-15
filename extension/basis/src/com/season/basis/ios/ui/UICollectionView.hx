package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UICollectionView extends UIScrollView
{
	public function new(?type:Int = 10)
	{
		super(type);
	}
	
	
	public var allowsMultipleSelection(getAllowsMultipleSelection, setAllowsMultipleSelection) : Bool;
	private function setAllowsMultipleSelection(value:Bool):Bool
	{
		cpp_uicollectionview_setAllowsMultipleSelection(_tag, value);
		return cpp_uicollectionview_getAllowsMultipleSelection(_tag);
	}
	private static var cpp_uicollectionview_setAllowsMultipleSelection = Lib.load("basis", "uicollectionview_setAllowsMultipleSelection", 2);
	private function getAllowsMultipleSelection():Bool
	{
		return cpp_uicollectionview_getAllowsMultipleSelection(_tag);
	}
	private static var cpp_uicollectionview_getAllowsMultipleSelection = Lib.load("basis", "uicollectionview_getAllowsMultipleSelection", 1);
	public var allowsSelection(getAllowsSelection, setAllowsSelection) : Bool;
	private function setAllowsSelection(value:Bool):Bool
	{
		cpp_uicollectionview_setAllowsSelection(_tag, value);
		return cpp_uicollectionview_getAllowsSelection(_tag);
	}
	private static var cpp_uicollectionview_setAllowsSelection = Lib.load("basis", "uicollectionview_setAllowsSelection", 2);
	private function getAllowsSelection():Bool
	{
		return cpp_uicollectionview_getAllowsSelection(_tag);
	}
	private static var cpp_uicollectionview_getAllowsSelection = Lib.load("basis", "uicollectionview_getAllowsSelection", 1);
	public var backgroundView(getBackgroundView, setBackgroundView) : UIView;
	private function setBackgroundView(value:UIView):UIView
	{
		cpp_uicollectionview_setBackgroundView(_tag, value);
		return cpp_uicollectionview_getBackgroundView(_tag);
	}
	private static var cpp_uicollectionview_setBackgroundView = Lib.load("basis", "uicollectionview_setBackgroundView", 2);
	private function getBackgroundView():UIView
	{
		return cpp_uicollectionview_getBackgroundView(_tag);
	}
	private static var cpp_uicollectionview_getBackgroundView = Lib.load("basis", "uicollectionview_getBackgroundView", 1);

	public function reloadData():Void
	{
		cpp_uicollectionview_reloadData(_tag);
	}
	private static var cpp_uicollectionview_reloadData = Lib.load("basis", "uicollectionview_reloadData", 1);

}
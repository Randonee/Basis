package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UICollectionViewCell extends UICollectionReusableView
{
	public function new(?type:Int = 11)
	{
		super(type);
	}
	
	
	public var backgroundView(getBackgroundView, setBackgroundView) : UIView;
	private function setBackgroundView(value:UIView):UIView
	{
		cpp_uicollectionviewcell_setBackgroundView(_tag, value);
		return cpp_uicollectionviewcell_getBackgroundView(_tag);
	}
	private static var cpp_uicollectionviewcell_setBackgroundView = Lib.load("basis", "uicollectionviewcell_setBackgroundView", 2);
	private function getBackgroundView():UIView
	{
		return cpp_uicollectionviewcell_getBackgroundView(_tag);
	}
	private static var cpp_uicollectionviewcell_getBackgroundView = Lib.load("basis", "uicollectionviewcell_getBackgroundView", 1);
	public var contentView(getContentView, null) : UIView;
		private function getContentView():UIView
	{
		return cpp_uicollectionviewcell_getContentView(_tag);
	}
	private static var cpp_uicollectionviewcell_getContentView = Lib.load("basis", "uicollectionviewcell_getContentView", 1);
	public var highlighted(getHighlighted, setHighlighted) : Bool;
	private function setHighlighted(value:Bool):Bool
	{
		cpp_uicollectionviewcell_setHighlighted(_tag, value);
		return cpp_uicollectionviewcell_getHighlighted(_tag);
	}
	private static var cpp_uicollectionviewcell_setHighlighted = Lib.load("basis", "uicollectionviewcell_setHighlighted", 2);
	private function getHighlighted():Bool
	{
		return cpp_uicollectionviewcell_getHighlighted(_tag);
	}
	private static var cpp_uicollectionviewcell_getHighlighted = Lib.load("basis", "uicollectionviewcell_getHighlighted", 1);
	public var selected(getSelected, setSelected) : Bool;
	private function setSelected(value:Bool):Bool
	{
		cpp_uicollectionviewcell_setSelected(_tag, value);
		return cpp_uicollectionviewcell_getSelected(_tag);
	}
	private static var cpp_uicollectionviewcell_setSelected = Lib.load("basis", "uicollectionviewcell_setSelected", 2);
	private function getSelected():Bool
	{
		return cpp_uicollectionviewcell_getSelected(_tag);
	}
	private static var cpp_uicollectionviewcell_getSelected = Lib.load("basis", "uicollectionviewcell_getSelected", 1);
	public var selectedBackgroundView(getSelectedBackgroundView, setSelectedBackgroundView) : UIView;
	private function setSelectedBackgroundView(value:UIView):UIView
	{
		cpp_uicollectionviewcell_setSelectedBackgroundView(_tag, value);
		return cpp_uicollectionviewcell_getSelectedBackgroundView(_tag);
	}
	private static var cpp_uicollectionviewcell_setSelectedBackgroundView = Lib.load("basis", "uicollectionviewcell_setSelectedBackgroundView", 2);
	private function getSelectedBackgroundView():UIView
	{
		return cpp_uicollectionviewcell_getSelectedBackgroundView(_tag);
	}
	private static var cpp_uicollectionviewcell_getSelectedBackgroundView = Lib.load("basis", "uicollectionviewcell_getSelectedBackgroundView", 1);

}
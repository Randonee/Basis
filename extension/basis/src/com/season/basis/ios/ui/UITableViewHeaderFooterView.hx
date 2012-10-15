package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UITableViewHeaderFooterView extends UIView
{
	public function new(?type:Int = 29)
	{
		super(type);
	}
	
	
	public var backgroundView(getBackgroundView, setBackgroundView) : UIView;
	private function setBackgroundView(value:UIView):UIView
	{
		cpp_uitableviewheaderfooterview_setBackgroundView(_tag, value);
		return cpp_uitableviewheaderfooterview_getBackgroundView(_tag);
	}
	private static var cpp_uitableviewheaderfooterview_setBackgroundView = Lib.load("basis", "uitableviewheaderfooterview_setBackgroundView", 2);
	private function getBackgroundView():UIView
	{
		return cpp_uitableviewheaderfooterview_getBackgroundView(_tag);
	}
	private static var cpp_uitableviewheaderfooterview_getBackgroundView = Lib.load("basis", "uitableviewheaderfooterview_getBackgroundView", 1);
	public var contentView(getContentView, null) : UIView;
		private function getContentView():UIView
	{
		return cpp_uitableviewheaderfooterview_getContentView(_tag);
	}
	private static var cpp_uitableviewheaderfooterview_getContentView = Lib.load("basis", "uitableviewheaderfooterview_getContentView", 1);
	public var detailTextLabel(getDetailTextLabel, null) : UILabel;
		private function getDetailTextLabel():UILabel
	{
		return cpp_uitableviewheaderfooterview_getDetailTextLabel(_tag);
	}
	private static var cpp_uitableviewheaderfooterview_getDetailTextLabel = Lib.load("basis", "uitableviewheaderfooterview_getDetailTextLabel", 1);
	public var reuseIdentifier(getReuseIdentifier, null) : String;
		private function getReuseIdentifier():String
	{
		return cpp_uitableviewheaderfooterview_getReuseIdentifier(_tag);
	}
	private static var cpp_uitableviewheaderfooterview_getReuseIdentifier = Lib.load("basis", "uitableviewheaderfooterview_getReuseIdentifier", 1);
	public var textLabel(getTextLabel, null) : UILabel;
		private function getTextLabel():UILabel
	{
		return cpp_uitableviewheaderfooterview_getTextLabel(_tag);
	}
	private static var cpp_uitableviewheaderfooterview_getTextLabel = Lib.load("basis", "uitableviewheaderfooterview_getTextLabel", 1);

	public function prepareForReuse():Void
	{
		cpp_uitableviewheaderfooterview_prepareForReuse(_tag);
	}
	private static var cpp_uitableviewheaderfooterview_prepareForReuse = Lib.load("basis", "uitableviewheaderfooterview_prepareForReuse", 1);

}
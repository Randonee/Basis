package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UITableView extends UIScrollView
{
	public function new(?type:Int = 27)
	{
		super(type);
	}
	
	
	public var allowsMultipleSelection(getAllowsMultipleSelection, setAllowsMultipleSelection) : Bool;
	private function setAllowsMultipleSelection(value:Bool):Bool
	{
		cpp_uitableview_setAllowsMultipleSelection(_tag, value);
		return cpp_uitableview_getAllowsMultipleSelection(_tag);
	}
	private static var cpp_uitableview_setAllowsMultipleSelection = Lib.load("basis", "uitableview_setAllowsMultipleSelection", 2);
	private function getAllowsMultipleSelection():Bool
	{
		return cpp_uitableview_getAllowsMultipleSelection(_tag);
	}
	private static var cpp_uitableview_getAllowsMultipleSelection = Lib.load("basis", "uitableview_getAllowsMultipleSelection", 1);
	public var allowsMultipleSelectionDuringEditing(getAllowsMultipleSelectionDuringEditing, setAllowsMultipleSelectionDuringEditing) : Bool;
	private function setAllowsMultipleSelectionDuringEditing(value:Bool):Bool
	{
		cpp_uitableview_setAllowsMultipleSelectionDuringEditing(_tag, value);
		return cpp_uitableview_getAllowsMultipleSelectionDuringEditing(_tag);
	}
	private static var cpp_uitableview_setAllowsMultipleSelectionDuringEditing = Lib.load("basis", "uitableview_setAllowsMultipleSelectionDuringEditing", 2);
	private function getAllowsMultipleSelectionDuringEditing():Bool
	{
		return cpp_uitableview_getAllowsMultipleSelectionDuringEditing(_tag);
	}
	private static var cpp_uitableview_getAllowsMultipleSelectionDuringEditing = Lib.load("basis", "uitableview_getAllowsMultipleSelectionDuringEditing", 1);
	public var allowsSelection(getAllowsSelection, setAllowsSelection) : Bool;
	private function setAllowsSelection(value:Bool):Bool
	{
		cpp_uitableview_setAllowsSelection(_tag, value);
		return cpp_uitableview_getAllowsSelection(_tag);
	}
	private static var cpp_uitableview_setAllowsSelection = Lib.load("basis", "uitableview_setAllowsSelection", 2);
	private function getAllowsSelection():Bool
	{
		return cpp_uitableview_getAllowsSelection(_tag);
	}
	private static var cpp_uitableview_getAllowsSelection = Lib.load("basis", "uitableview_getAllowsSelection", 1);
	public var allowsSelectionDuringEditing(getAllowsSelectionDuringEditing, setAllowsSelectionDuringEditing) : Bool;
	private function setAllowsSelectionDuringEditing(value:Bool):Bool
	{
		cpp_uitableview_setAllowsSelectionDuringEditing(_tag, value);
		return cpp_uitableview_getAllowsSelectionDuringEditing(_tag);
	}
	private static var cpp_uitableview_setAllowsSelectionDuringEditing = Lib.load("basis", "uitableview_setAllowsSelectionDuringEditing", 2);
	private function getAllowsSelectionDuringEditing():Bool
	{
		return cpp_uitableview_getAllowsSelectionDuringEditing(_tag);
	}
	private static var cpp_uitableview_getAllowsSelectionDuringEditing = Lib.load("basis", "uitableview_getAllowsSelectionDuringEditing", 1);
	public var backgroundView(getBackgroundView, setBackgroundView) : UIView;
	private function setBackgroundView(value:UIView):UIView
	{
		cpp_uitableview_setBackgroundView(_tag, value);
		return cpp_uitableview_getBackgroundView(_tag);
	}
	private static var cpp_uitableview_setBackgroundView = Lib.load("basis", "uitableview_setBackgroundView", 2);
	private function getBackgroundView():UIView
	{
		return cpp_uitableview_getBackgroundView(_tag);
	}
	private static var cpp_uitableview_getBackgroundView = Lib.load("basis", "uitableview_getBackgroundView", 1);
	public var editing(getEditing, setEditing) : Bool;
	private function setEditing(value:Bool):Bool
	{
		cpp_uitableview_setEditing(_tag, value);
		return cpp_uitableview_getEditing(_tag);
	}
	private static var cpp_uitableview_setEditing = Lib.load("basis", "uitableview_setEditing", 2);
	private function getEditing():Bool
	{
		return cpp_uitableview_getEditing(_tag);
	}
	private static var cpp_uitableview_getEditing = Lib.load("basis", "uitableview_getEditing", 1);
	public var tableFooterView(getTableFooterView, setTableFooterView) : UIView;
	private function setTableFooterView(value:UIView):UIView
	{
		cpp_uitableview_setTableFooterView(_tag, value);
		return cpp_uitableview_getTableFooterView(_tag);
	}
	private static var cpp_uitableview_setTableFooterView = Lib.load("basis", "uitableview_setTableFooterView", 2);
	private function getTableFooterView():UIView
	{
		return cpp_uitableview_getTableFooterView(_tag);
	}
	private static var cpp_uitableview_getTableFooterView = Lib.load("basis", "uitableview_getTableFooterView", 1);
	public var tableHeaderView(getTableHeaderView, setTableHeaderView) : UIView;
	private function setTableHeaderView(value:UIView):UIView
	{
		cpp_uitableview_setTableHeaderView(_tag, value);
		return cpp_uitableview_getTableHeaderView(_tag);
	}
	private static var cpp_uitableview_setTableHeaderView = Lib.load("basis", "uitableview_setTableHeaderView", 2);
	private function getTableHeaderView():UIView
	{
		return cpp_uitableview_getTableHeaderView(_tag);
	}
	private static var cpp_uitableview_getTableHeaderView = Lib.load("basis", "uitableview_getTableHeaderView", 1);

	public function beginUpdates():Void
	{
		cpp_uitableview_beginUpdates(_tag);
	}
	private static var cpp_uitableview_beginUpdates = Lib.load("basis", "uitableview_beginUpdates", 1);

	public function dequeueReusableCellWithIdentifier(arg1:String):UIView
	{
		return cpp_uitableview_dequeueReusableCellWithIdentifier(_tag, arg1);
	}
	private static var cpp_uitableview_dequeueReusableCellWithIdentifier = Lib.load("basis", "uitableview_dequeueReusableCellWithIdentifier", 2);

	public function dequeueReusableHeaderFooterViewWithIdentifier(arg1:String):UIView
	{
		return cpp_uitableview_dequeueReusableHeaderFooterViewWithIdentifier(_tag, arg1);
	}
	private static var cpp_uitableview_dequeueReusableHeaderFooterViewWithIdentifier = Lib.load("basis", "uitableview_dequeueReusableHeaderFooterViewWithIdentifier", 2);

	public function endUpdates():Void
	{
		cpp_uitableview_endUpdates(_tag);
	}
	private static var cpp_uitableview_endUpdates = Lib.load("basis", "uitableview_endUpdates", 1);

	public function reloadData():Void
	{
		cpp_uitableview_reloadData(_tag);
	}
	private static var cpp_uitableview_reloadData = Lib.load("basis", "uitableview_reloadData", 1);

	public function reloadSectionIndexTitles():Void
	{
		cpp_uitableview_reloadSectionIndexTitles(_tag);
	}
	private static var cpp_uitableview_reloadSectionIndexTitles = Lib.load("basis", "uitableview_reloadSectionIndexTitles", 1);

}
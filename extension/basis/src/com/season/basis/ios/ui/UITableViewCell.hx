package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UITableViewCell extends UIView
{
	public function new(?type:Int = 28)
	{
		super(type);
	}
	
	
	public var backgroundView(getBackgroundView, setBackgroundView) : UIView;
	private function setBackgroundView(value:UIView):UIView
	{
		cpp_uitableviewcell_setBackgroundView(_tag, value);
		return cpp_uitableviewcell_getBackgroundView(_tag);
	}
	private static var cpp_uitableviewcell_setBackgroundView = Lib.load("basis", "uitableviewcell_setBackgroundView", 2);
	private function getBackgroundView():UIView
	{
		return cpp_uitableviewcell_getBackgroundView(_tag);
	}
	private static var cpp_uitableviewcell_getBackgroundView = Lib.load("basis", "uitableviewcell_getBackgroundView", 1);
	public var contentView(getContentView, null) : UIView;
		private function getContentView():UIView
	{
		return cpp_uitableviewcell_getContentView(_tag);
	}
	private static var cpp_uitableviewcell_getContentView = Lib.load("basis", "uitableviewcell_getContentView", 1);
	public var detailTextLabel(getDetailTextLabel, null) : UILabel;
		private function getDetailTextLabel():UILabel
	{
		return cpp_uitableviewcell_getDetailTextLabel(_tag);
	}
	private static var cpp_uitableviewcell_getDetailTextLabel = Lib.load("basis", "uitableviewcell_getDetailTextLabel", 1);
	public var editing(getEditing, setEditing) : Bool;
	private function setEditing(value:Bool):Bool
	{
		cpp_uitableviewcell_setEditing(_tag, value);
		return cpp_uitableviewcell_getEditing(_tag);
	}
	private static var cpp_uitableviewcell_setEditing = Lib.load("basis", "uitableviewcell_setEditing", 2);
	private function getEditing():Bool
	{
		return cpp_uitableviewcell_getEditing(_tag);
	}
	private static var cpp_uitableviewcell_getEditing = Lib.load("basis", "uitableviewcell_getEditing", 1);
	public var editingAccessoryView(getEditingAccessoryView, setEditingAccessoryView) : UIView;
	private function setEditingAccessoryView(value:UIView):UIView
	{
		cpp_uitableviewcell_setEditingAccessoryView(_tag, value);
		return cpp_uitableviewcell_getEditingAccessoryView(_tag);
	}
	private static var cpp_uitableviewcell_setEditingAccessoryView = Lib.load("basis", "uitableviewcell_setEditingAccessoryView", 2);
	private function getEditingAccessoryView():UIView
	{
		return cpp_uitableviewcell_getEditingAccessoryView(_tag);
	}
	private static var cpp_uitableviewcell_getEditingAccessoryView = Lib.load("basis", "uitableviewcell_getEditingAccessoryView", 1);
	public var multipleSelectionBackgroundView(getMultipleSelectionBackgroundView, setMultipleSelectionBackgroundView) : UIView;
	private function setMultipleSelectionBackgroundView(value:UIView):UIView
	{
		cpp_uitableviewcell_setMultipleSelectionBackgroundView(_tag, value);
		return cpp_uitableviewcell_getMultipleSelectionBackgroundView(_tag);
	}
	private static var cpp_uitableviewcell_setMultipleSelectionBackgroundView = Lib.load("basis", "uitableviewcell_setMultipleSelectionBackgroundView", 2);
	private function getMultipleSelectionBackgroundView():UIView
	{
		return cpp_uitableviewcell_getMultipleSelectionBackgroundView(_tag);
	}
	private static var cpp_uitableviewcell_getMultipleSelectionBackgroundView = Lib.load("basis", "uitableviewcell_getMultipleSelectionBackgroundView", 1);
	public var reuseIdentifier(getReuseIdentifier, null) : String;
		private function getReuseIdentifier():String
	{
		return cpp_uitableviewcell_getReuseIdentifier(_tag);
	}
	private static var cpp_uitableviewcell_getReuseIdentifier = Lib.load("basis", "uitableviewcell_getReuseIdentifier", 1);
	public var selected(getSelected, setSelected) : Bool;
	private function setSelected(value:Bool):Bool
	{
		cpp_uitableviewcell_setSelected(_tag, value);
		return cpp_uitableviewcell_getSelected(_tag);
	}
	private static var cpp_uitableviewcell_setSelected = Lib.load("basis", "uitableviewcell_setSelected", 2);
	private function getSelected():Bool
	{
		return cpp_uitableviewcell_getSelected(_tag);
	}
	private static var cpp_uitableviewcell_getSelected = Lib.load("basis", "uitableviewcell_getSelected", 1);
	public var selectedBackgroundView(getSelectedBackgroundView, setSelectedBackgroundView) : UIView;
	private function setSelectedBackgroundView(value:UIView):UIView
	{
		cpp_uitableviewcell_setSelectedBackgroundView(_tag, value);
		return cpp_uitableviewcell_getSelectedBackgroundView(_tag);
	}
	private static var cpp_uitableviewcell_setSelectedBackgroundView = Lib.load("basis", "uitableviewcell_setSelectedBackgroundView", 2);
	private function getSelectedBackgroundView():UIView
	{
		return cpp_uitableviewcell_getSelectedBackgroundView(_tag);
	}
	private static var cpp_uitableviewcell_getSelectedBackgroundView = Lib.load("basis", "uitableviewcell_getSelectedBackgroundView", 1);
	public var shouldIndentWhileEditing(getShouldIndentWhileEditing, setShouldIndentWhileEditing) : Bool;
	private function setShouldIndentWhileEditing(value:Bool):Bool
	{
		cpp_uitableviewcell_setShouldIndentWhileEditing(_tag, value);
		return cpp_uitableviewcell_getShouldIndentWhileEditing(_tag);
	}
	private static var cpp_uitableviewcell_setShouldIndentWhileEditing = Lib.load("basis", "uitableviewcell_setShouldIndentWhileEditing", 2);
	private function getShouldIndentWhileEditing():Bool
	{
		return cpp_uitableviewcell_getShouldIndentWhileEditing(_tag);
	}
	private static var cpp_uitableviewcell_getShouldIndentWhileEditing = Lib.load("basis", "uitableviewcell_getShouldIndentWhileEditing", 1);
	public var showingDeleteConfirmation(getShowingDeleteConfirmation, null) : Bool;
		private function getShowingDeleteConfirmation():Bool
	{
		return cpp_uitableviewcell_getShowingDeleteConfirmation(_tag);
	}
	private static var cpp_uitableviewcell_getShowingDeleteConfirmation = Lib.load("basis", "uitableviewcell_getShowingDeleteConfirmation", 1);
	public var showsReorderControl(getShowsReorderControl, setShowsReorderControl) : Bool;
	private function setShowsReorderControl(value:Bool):Bool
	{
		cpp_uitableviewcell_setShowsReorderControl(_tag, value);
		return cpp_uitableviewcell_getShowsReorderControl(_tag);
	}
	private static var cpp_uitableviewcell_setShowsReorderControl = Lib.load("basis", "uitableviewcell_setShowsReorderControl", 2);
	private function getShowsReorderControl():Bool
	{
		return cpp_uitableviewcell_getShowsReorderControl(_tag);
	}
	private static var cpp_uitableviewcell_getShowsReorderControl = Lib.load("basis", "uitableviewcell_getShowsReorderControl", 1);
	public var textLabel(getTextLabel, null) : UILabel;
		private function getTextLabel():UILabel
	{
		return cpp_uitableviewcell_getTextLabel(_tag);
	}
	private static var cpp_uitableviewcell_getTextLabel = Lib.load("basis", "uitableviewcell_getTextLabel", 1);

	public function prepareForReuse():Void
	{
		cpp_uitableviewcell_prepareForReuse(_tag);
	}
	private static var cpp_uitableviewcell_prepareForReuse = Lib.load("basis", "uitableviewcell_prepareForReuse", 1);

	public function setHighlighted(arg1:Bool, arg2:Bool):Void
	{
		cpp_uitableviewcell_setHighlighted(_tag, arg1, arg2);
	}
	private static var cpp_uitableviewcell_setHighlighted = Lib.load("basis", "uitableviewcell_setHighlighted", 3);

}
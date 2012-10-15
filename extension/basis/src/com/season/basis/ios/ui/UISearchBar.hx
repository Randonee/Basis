package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UISearchBar extends UIView
{
	public function new(?type:Int = 21)
	{
		super(type);
	}
	
	
	public var placeholder(getPlaceholder, setPlaceholder) : String;
	private function setPlaceholder(value:String):String
	{
		cpp_uisearchbar_setPlaceholder(_tag, value);
		return cpp_uisearchbar_getPlaceholder(_tag);
	}
	private static var cpp_uisearchbar_setPlaceholder = Lib.load("basis", "uisearchbar_setPlaceholder", 2);
	private function getPlaceholder():String
	{
		return cpp_uisearchbar_getPlaceholder(_tag);
	}
	private static var cpp_uisearchbar_getPlaceholder = Lib.load("basis", "uisearchbar_getPlaceholder", 1);
	public var prompt(getPrompt, setPrompt) : String;
	private function setPrompt(value:String):String
	{
		cpp_uisearchbar_setPrompt(_tag, value);
		return cpp_uisearchbar_getPrompt(_tag);
	}
	private static var cpp_uisearchbar_setPrompt = Lib.load("basis", "uisearchbar_setPrompt", 2);
	private function getPrompt():String
	{
		return cpp_uisearchbar_getPrompt(_tag);
	}
	private static var cpp_uisearchbar_getPrompt = Lib.load("basis", "uisearchbar_getPrompt", 1);
	public var searchResultsButtonSelected(getSearchResultsButtonSelected, setSearchResultsButtonSelected) : Bool;
	private function setSearchResultsButtonSelected(value:Bool):Bool
	{
		cpp_uisearchbar_setSearchResultsButtonSelected(_tag, value);
		return cpp_uisearchbar_getSearchResultsButtonSelected(_tag);
	}
	private static var cpp_uisearchbar_setSearchResultsButtonSelected = Lib.load("basis", "uisearchbar_setSearchResultsButtonSelected", 2);
	private function getSearchResultsButtonSelected():Bool
	{
		return cpp_uisearchbar_getSearchResultsButtonSelected(_tag);
	}
	private static var cpp_uisearchbar_getSearchResultsButtonSelected = Lib.load("basis", "uisearchbar_getSearchResultsButtonSelected", 1);
	public var showsBookmarkButton(getShowsBookmarkButton, setShowsBookmarkButton) : Bool;
	private function setShowsBookmarkButton(value:Bool):Bool
	{
		cpp_uisearchbar_setShowsBookmarkButton(_tag, value);
		return cpp_uisearchbar_getShowsBookmarkButton(_tag);
	}
	private static var cpp_uisearchbar_setShowsBookmarkButton = Lib.load("basis", "uisearchbar_setShowsBookmarkButton", 2);
	private function getShowsBookmarkButton():Bool
	{
		return cpp_uisearchbar_getShowsBookmarkButton(_tag);
	}
	private static var cpp_uisearchbar_getShowsBookmarkButton = Lib.load("basis", "uisearchbar_getShowsBookmarkButton", 1);
	public var showsCancelButton(getShowsCancelButton, setShowsCancelButton) : Bool;
	private function setShowsCancelButton(value:Bool):Bool
	{
		cpp_uisearchbar_setShowsCancelButton(_tag, value);
		return cpp_uisearchbar_getShowsCancelButton(_tag);
	}
	private static var cpp_uisearchbar_setShowsCancelButton = Lib.load("basis", "uisearchbar_setShowsCancelButton", 2);
	private function getShowsCancelButton():Bool
	{
		return cpp_uisearchbar_getShowsCancelButton(_tag);
	}
	private static var cpp_uisearchbar_getShowsCancelButton = Lib.load("basis", "uisearchbar_getShowsCancelButton", 1);
	public var showsScopeBar(getShowsScopeBar, setShowsScopeBar) : Bool;
	private function setShowsScopeBar(value:Bool):Bool
	{
		cpp_uisearchbar_setShowsScopeBar(_tag, value);
		return cpp_uisearchbar_getShowsScopeBar(_tag);
	}
	private static var cpp_uisearchbar_setShowsScopeBar = Lib.load("basis", "uisearchbar_setShowsScopeBar", 2);
	private function getShowsScopeBar():Bool
	{
		return cpp_uisearchbar_getShowsScopeBar(_tag);
	}
	private static var cpp_uisearchbar_getShowsScopeBar = Lib.load("basis", "uisearchbar_getShowsScopeBar", 1);
	public var showsSearchResultsButton(getShowsSearchResultsButton, setShowsSearchResultsButton) : Bool;
	private function setShowsSearchResultsButton(value:Bool):Bool
	{
		cpp_uisearchbar_setShowsSearchResultsButton(_tag, value);
		return cpp_uisearchbar_getShowsSearchResultsButton(_tag);
	}
	private static var cpp_uisearchbar_setShowsSearchResultsButton = Lib.load("basis", "uisearchbar_setShowsSearchResultsButton", 2);
	private function getShowsSearchResultsButton():Bool
	{
		return cpp_uisearchbar_getShowsSearchResultsButton(_tag);
	}
	private static var cpp_uisearchbar_getShowsSearchResultsButton = Lib.load("basis", "uisearchbar_getShowsSearchResultsButton", 1);
	public var text(getText, setText) : String;
	private function setText(value:String):String
	{
		cpp_uisearchbar_setText(_tag, value);
		return cpp_uisearchbar_getText(_tag);
	}
	private static var cpp_uisearchbar_setText = Lib.load("basis", "uisearchbar_setText", 2);
	private function getText():String
	{
		return cpp_uisearchbar_getText(_tag);
	}
	private static var cpp_uisearchbar_getText = Lib.load("basis", "uisearchbar_getText", 1);
	public var translucent(getTranslucent, setTranslucent) : Bool;
	private function setTranslucent(value:Bool):Bool
	{
		cpp_uisearchbar_setTranslucent(_tag, value);
		return cpp_uisearchbar_getTranslucent(_tag);
	}
	private static var cpp_uisearchbar_setTranslucent = Lib.load("basis", "uisearchbar_setTranslucent", 2);
	private function getTranslucent():Bool
	{
		return cpp_uisearchbar_getTranslucent(_tag);
	}
	private static var cpp_uisearchbar_getTranslucent = Lib.load("basis", "uisearchbar_getTranslucent", 1);

}
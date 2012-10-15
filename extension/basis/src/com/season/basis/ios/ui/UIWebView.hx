package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIWebView extends UIView
{
	public function new(?type:Int = 31)
	{
		super(type);
	}
	
	
	public var canGoBack(getCanGoBack, null) : Bool;
		private function getCanGoBack():Bool
	{
		return cpp_uiwebview_getCanGoBack(_tag);
	}
	private static var cpp_uiwebview_getCanGoBack = Lib.load("basis", "uiwebview_getCanGoBack", 1);
	public var canGoForward(getCanGoForward, null) : Bool;
		private function getCanGoForward():Bool
	{
		return cpp_uiwebview_getCanGoForward(_tag);
	}
	private static var cpp_uiwebview_getCanGoForward = Lib.load("basis", "uiwebview_getCanGoForward", 1);
	public var keyboardDisplayRequiresUserAction(getKeyboardDisplayRequiresUserAction, setKeyboardDisplayRequiresUserAction) : Bool;
	private function setKeyboardDisplayRequiresUserAction(value:Bool):Bool
	{
		cpp_uiwebview_setKeyboardDisplayRequiresUserAction(_tag, value);
		return cpp_uiwebview_getKeyboardDisplayRequiresUserAction(_tag);
	}
	private static var cpp_uiwebview_setKeyboardDisplayRequiresUserAction = Lib.load("basis", "uiwebview_setKeyboardDisplayRequiresUserAction", 2);
	private function getKeyboardDisplayRequiresUserAction():Bool
	{
		return cpp_uiwebview_getKeyboardDisplayRequiresUserAction(_tag);
	}
	private static var cpp_uiwebview_getKeyboardDisplayRequiresUserAction = Lib.load("basis", "uiwebview_getKeyboardDisplayRequiresUserAction", 1);
	public var loading(getLoading, null) : Bool;
		private function getLoading():Bool
	{
		return cpp_uiwebview_getLoading(_tag);
	}
	private static var cpp_uiwebview_getLoading = Lib.load("basis", "uiwebview_getLoading", 1);
	public var mediaPlaybackAllowsAirPlay(getMediaPlaybackAllowsAirPlay, setMediaPlaybackAllowsAirPlay) : Bool;
	private function setMediaPlaybackAllowsAirPlay(value:Bool):Bool
	{
		cpp_uiwebview_setMediaPlaybackAllowsAirPlay(_tag, value);
		return cpp_uiwebview_getMediaPlaybackAllowsAirPlay(_tag);
	}
	private static var cpp_uiwebview_setMediaPlaybackAllowsAirPlay = Lib.load("basis", "uiwebview_setMediaPlaybackAllowsAirPlay", 2);
	private function getMediaPlaybackAllowsAirPlay():Bool
	{
		return cpp_uiwebview_getMediaPlaybackAllowsAirPlay(_tag);
	}
	private static var cpp_uiwebview_getMediaPlaybackAllowsAirPlay = Lib.load("basis", "uiwebview_getMediaPlaybackAllowsAirPlay", 1);
	public var mediaPlaybackRequiresUserAction(getMediaPlaybackRequiresUserAction, setMediaPlaybackRequiresUserAction) : Bool;
	private function setMediaPlaybackRequiresUserAction(value:Bool):Bool
	{
		cpp_uiwebview_setMediaPlaybackRequiresUserAction(_tag, value);
		return cpp_uiwebview_getMediaPlaybackRequiresUserAction(_tag);
	}
	private static var cpp_uiwebview_setMediaPlaybackRequiresUserAction = Lib.load("basis", "uiwebview_setMediaPlaybackRequiresUserAction", 2);
	private function getMediaPlaybackRequiresUserAction():Bool
	{
		return cpp_uiwebview_getMediaPlaybackRequiresUserAction(_tag);
	}
	private static var cpp_uiwebview_getMediaPlaybackRequiresUserAction = Lib.load("basis", "uiwebview_getMediaPlaybackRequiresUserAction", 1);
	public var scalesPageToFit(getScalesPageToFit, setScalesPageToFit) : Bool;
	private function setScalesPageToFit(value:Bool):Bool
	{
		cpp_uiwebview_setScalesPageToFit(_tag, value);
		return cpp_uiwebview_getScalesPageToFit(_tag);
	}
	private static var cpp_uiwebview_setScalesPageToFit = Lib.load("basis", "uiwebview_setScalesPageToFit", 2);
	private function getScalesPageToFit():Bool
	{
		return cpp_uiwebview_getScalesPageToFit(_tag);
	}
	private static var cpp_uiwebview_getScalesPageToFit = Lib.load("basis", "uiwebview_getScalesPageToFit", 1);
	public var suppressesIncrementalRendering(getSuppressesIncrementalRendering, setSuppressesIncrementalRendering) : Bool;
	private function setSuppressesIncrementalRendering(value:Bool):Bool
	{
		cpp_uiwebview_setSuppressesIncrementalRendering(_tag, value);
		return cpp_uiwebview_getSuppressesIncrementalRendering(_tag);
	}
	private static var cpp_uiwebview_setSuppressesIncrementalRendering = Lib.load("basis", "uiwebview_setSuppressesIncrementalRendering", 2);
	private function getSuppressesIncrementalRendering():Bool
	{
		return cpp_uiwebview_getSuppressesIncrementalRendering(_tag);
	}
	private static var cpp_uiwebview_getSuppressesIncrementalRendering = Lib.load("basis", "uiwebview_getSuppressesIncrementalRendering", 1);

	public function goBack():Void
	{
		cpp_uiwebview_goBack(_tag);
	}
	private static var cpp_uiwebview_goBack = Lib.load("basis", "uiwebview_goBack", 1);

	public function goForward():Void
	{
		cpp_uiwebview_goForward(_tag);
	}
	private static var cpp_uiwebview_goForward = Lib.load("basis", "uiwebview_goForward", 1);

	public function reload():Void
	{
		cpp_uiwebview_reload(_tag);
	}
	private static var cpp_uiwebview_reload = Lib.load("basis", "uiwebview_reload", 1);

	public function stopLoading():Void
	{
		cpp_uiwebview_stopLoading(_tag);
	}
	private static var cpp_uiwebview_stopLoading = Lib.load("basis", "uiwebview_stopLoading", 1);

	public function stringByEvaluatingJavaScriptFromString(arg1:String):String
	{
		return cpp_uiwebview_stringByEvaluatingJavaScriptFromString(_tag, arg1);
	}
	private static var cpp_uiwebview_stringByEvaluatingJavaScriptFromString = Lib.load("basis", "uiwebview_stringByEvaluatingJavaScriptFromString", 2);

}
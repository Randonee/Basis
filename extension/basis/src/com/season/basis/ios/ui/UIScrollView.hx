package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIScrollView extends UIView
{
	public function new(?type:Int = 20)
	{
		super(type);
	}
	
	
	public var alwaysBounceHorizontal(getAlwaysBounceHorizontal, setAlwaysBounceHorizontal) : Bool;
	private function setAlwaysBounceHorizontal(value:Bool):Bool
	{
		cpp_uiscrollview_setAlwaysBounceHorizontal(_tag, value);
		return cpp_uiscrollview_getAlwaysBounceHorizontal(_tag);
	}
	private static var cpp_uiscrollview_setAlwaysBounceHorizontal = Lib.load("basis", "uiscrollview_setAlwaysBounceHorizontal", 2);
	private function getAlwaysBounceHorizontal():Bool
	{
		return cpp_uiscrollview_getAlwaysBounceHorizontal(_tag);
	}
	private static var cpp_uiscrollview_getAlwaysBounceHorizontal = Lib.load("basis", "uiscrollview_getAlwaysBounceHorizontal", 1);
	public var alwaysBounceVertical(getAlwaysBounceVertical, setAlwaysBounceVertical) : Bool;
	private function setAlwaysBounceVertical(value:Bool):Bool
	{
		cpp_uiscrollview_setAlwaysBounceVertical(_tag, value);
		return cpp_uiscrollview_getAlwaysBounceVertical(_tag);
	}
	private static var cpp_uiscrollview_setAlwaysBounceVertical = Lib.load("basis", "uiscrollview_setAlwaysBounceVertical", 2);
	private function getAlwaysBounceVertical():Bool
	{
		return cpp_uiscrollview_getAlwaysBounceVertical(_tag);
	}
	private static var cpp_uiscrollview_getAlwaysBounceVertical = Lib.load("basis", "uiscrollview_getAlwaysBounceVertical", 1);
	public var bounces(getBounces, setBounces) : Bool;
	private function setBounces(value:Bool):Bool
	{
		cpp_uiscrollview_setBounces(_tag, value);
		return cpp_uiscrollview_getBounces(_tag);
	}
	private static var cpp_uiscrollview_setBounces = Lib.load("basis", "uiscrollview_setBounces", 2);
	private function getBounces():Bool
	{
		return cpp_uiscrollview_getBounces(_tag);
	}
	private static var cpp_uiscrollview_getBounces = Lib.load("basis", "uiscrollview_getBounces", 1);
	public var bouncesZoom(getBouncesZoom, setBouncesZoom) : Bool;
	private function setBouncesZoom(value:Bool):Bool
	{
		cpp_uiscrollview_setBouncesZoom(_tag, value);
		return cpp_uiscrollview_getBouncesZoom(_tag);
	}
	private static var cpp_uiscrollview_setBouncesZoom = Lib.load("basis", "uiscrollview_setBouncesZoom", 2);
	private function getBouncesZoom():Bool
	{
		return cpp_uiscrollview_getBouncesZoom(_tag);
	}
	private static var cpp_uiscrollview_getBouncesZoom = Lib.load("basis", "uiscrollview_getBouncesZoom", 1);
	public var canCancelContentTouches(getCanCancelContentTouches, setCanCancelContentTouches) : Bool;
	private function setCanCancelContentTouches(value:Bool):Bool
	{
		cpp_uiscrollview_setCanCancelContentTouches(_tag, value);
		return cpp_uiscrollview_getCanCancelContentTouches(_tag);
	}
	private static var cpp_uiscrollview_setCanCancelContentTouches = Lib.load("basis", "uiscrollview_setCanCancelContentTouches", 2);
	private function getCanCancelContentTouches():Bool
	{
		return cpp_uiscrollview_getCanCancelContentTouches(_tag);
	}
	private static var cpp_uiscrollview_getCanCancelContentTouches = Lib.load("basis", "uiscrollview_getCanCancelContentTouches", 1);
	public var decelerating(getDecelerating, null) : Bool;
		private function getDecelerating():Bool
	{
		return cpp_uiscrollview_getDecelerating(_tag);
	}
	private static var cpp_uiscrollview_getDecelerating = Lib.load("basis", "uiscrollview_getDecelerating", 1);
	public var delaysContentTouches(getDelaysContentTouches, setDelaysContentTouches) : Bool;
	private function setDelaysContentTouches(value:Bool):Bool
	{
		cpp_uiscrollview_setDelaysContentTouches(_tag, value);
		return cpp_uiscrollview_getDelaysContentTouches(_tag);
	}
	private static var cpp_uiscrollview_setDelaysContentTouches = Lib.load("basis", "uiscrollview_setDelaysContentTouches", 2);
	private function getDelaysContentTouches():Bool
	{
		return cpp_uiscrollview_getDelaysContentTouches(_tag);
	}
	private static var cpp_uiscrollview_getDelaysContentTouches = Lib.load("basis", "uiscrollview_getDelaysContentTouches", 1);
	public var directionalLockEnabled(getDirectionalLockEnabled, setDirectionalLockEnabled) : Bool;
	private function setDirectionalLockEnabled(value:Bool):Bool
	{
		cpp_uiscrollview_setDirectionalLockEnabled(_tag, value);
		return cpp_uiscrollview_getDirectionalLockEnabled(_tag);
	}
	private static var cpp_uiscrollview_setDirectionalLockEnabled = Lib.load("basis", "uiscrollview_setDirectionalLockEnabled", 2);
	private function getDirectionalLockEnabled():Bool
	{
		return cpp_uiscrollview_getDirectionalLockEnabled(_tag);
	}
	private static var cpp_uiscrollview_getDirectionalLockEnabled = Lib.load("basis", "uiscrollview_getDirectionalLockEnabled", 1);
	public var dragging(getDragging, null) : Bool;
		private function getDragging():Bool
	{
		return cpp_uiscrollview_getDragging(_tag);
	}
	private static var cpp_uiscrollview_getDragging = Lib.load("basis", "uiscrollview_getDragging", 1);
	public var pagingEnabled(getPagingEnabled, setPagingEnabled) : Bool;
	private function setPagingEnabled(value:Bool):Bool
	{
		cpp_uiscrollview_setPagingEnabled(_tag, value);
		return cpp_uiscrollview_getPagingEnabled(_tag);
	}
	private static var cpp_uiscrollview_setPagingEnabled = Lib.load("basis", "uiscrollview_setPagingEnabled", 2);
	private function getPagingEnabled():Bool
	{
		return cpp_uiscrollview_getPagingEnabled(_tag);
	}
	private static var cpp_uiscrollview_getPagingEnabled = Lib.load("basis", "uiscrollview_getPagingEnabled", 1);
	public var scrollEnabled(getScrollEnabled, setScrollEnabled) : Bool;
	private function setScrollEnabled(value:Bool):Bool
	{
		cpp_uiscrollview_setScrollEnabled(_tag, value);
		return cpp_uiscrollview_getScrollEnabled(_tag);
	}
	private static var cpp_uiscrollview_setScrollEnabled = Lib.load("basis", "uiscrollview_setScrollEnabled", 2);
	private function getScrollEnabled():Bool
	{
		return cpp_uiscrollview_getScrollEnabled(_tag);
	}
	private static var cpp_uiscrollview_getScrollEnabled = Lib.load("basis", "uiscrollview_getScrollEnabled", 1);
	public var scrollsToTop(getScrollsToTop, setScrollsToTop) : Bool;
	private function setScrollsToTop(value:Bool):Bool
	{
		cpp_uiscrollview_setScrollsToTop(_tag, value);
		return cpp_uiscrollview_getScrollsToTop(_tag);
	}
	private static var cpp_uiscrollview_setScrollsToTop = Lib.load("basis", "uiscrollview_setScrollsToTop", 2);
	private function getScrollsToTop():Bool
	{
		return cpp_uiscrollview_getScrollsToTop(_tag);
	}
	private static var cpp_uiscrollview_getScrollsToTop = Lib.load("basis", "uiscrollview_getScrollsToTop", 1);
	public var showsHorizontalScrollIndicator(getShowsHorizontalScrollIndicator, setShowsHorizontalScrollIndicator) : Bool;
	private function setShowsHorizontalScrollIndicator(value:Bool):Bool
	{
		cpp_uiscrollview_setShowsHorizontalScrollIndicator(_tag, value);
		return cpp_uiscrollview_getShowsHorizontalScrollIndicator(_tag);
	}
	private static var cpp_uiscrollview_setShowsHorizontalScrollIndicator = Lib.load("basis", "uiscrollview_setShowsHorizontalScrollIndicator", 2);
	private function getShowsHorizontalScrollIndicator():Bool
	{
		return cpp_uiscrollview_getShowsHorizontalScrollIndicator(_tag);
	}
	private static var cpp_uiscrollview_getShowsHorizontalScrollIndicator = Lib.load("basis", "uiscrollview_getShowsHorizontalScrollIndicator", 1);
	public var showsVerticalScrollIndicator(getShowsVerticalScrollIndicator, setShowsVerticalScrollIndicator) : Bool;
	private function setShowsVerticalScrollIndicator(value:Bool):Bool
	{
		cpp_uiscrollview_setShowsVerticalScrollIndicator(_tag, value);
		return cpp_uiscrollview_getShowsVerticalScrollIndicator(_tag);
	}
	private static var cpp_uiscrollview_setShowsVerticalScrollIndicator = Lib.load("basis", "uiscrollview_setShowsVerticalScrollIndicator", 2);
	private function getShowsVerticalScrollIndicator():Bool
	{
		return cpp_uiscrollview_getShowsVerticalScrollIndicator(_tag);
	}
	private static var cpp_uiscrollview_getShowsVerticalScrollIndicator = Lib.load("basis", "uiscrollview_getShowsVerticalScrollIndicator", 1);
	public var tracking(getTracking, null) : Bool;
		private function getTracking():Bool
	{
		return cpp_uiscrollview_getTracking(_tag);
	}
	private static var cpp_uiscrollview_getTracking = Lib.load("basis", "uiscrollview_getTracking", 1);
	public var zoomBouncing(getZoomBouncing, null) : Bool;
		private function getZoomBouncing():Bool
	{
		return cpp_uiscrollview_getZoomBouncing(_tag);
	}
	private static var cpp_uiscrollview_getZoomBouncing = Lib.load("basis", "uiscrollview_getZoomBouncing", 1);
	public var zooming(getZooming, null) : Bool;
		private function getZooming():Bool
	{
		return cpp_uiscrollview_getZooming(_tag);
	}
	private static var cpp_uiscrollview_getZooming = Lib.load("basis", "uiscrollview_getZooming", 1);

	public function flashScrollIndicators():Void
	{
		cpp_uiscrollview_flashScrollIndicators(_tag);
	}
	private static var cpp_uiscrollview_flashScrollIndicators = Lib.load("basis", "uiscrollview_flashScrollIndicators", 1);

	public function scrollRectToVisible(arg1:Array<Float>, arg2:Bool):Void
	{
		cpp_uiscrollview_scrollRectToVisible(_tag, arg1, arg2);
	}
	private static var cpp_uiscrollview_scrollRectToVisible = Lib.load("basis", "uiscrollview_scrollRectToVisible", 3);

	public function touchesShouldCancelInContentView(arg1:UIView):Bool
	{
		return cpp_uiscrollview_touchesShouldCancelInContentView(_tag, arg1.tag);
	}
	private static var cpp_uiscrollview_touchesShouldCancelInContentView = Lib.load("basis", "uiscrollview_touchesShouldCancelInContentView", 2);

	public function zoomToRect(arg1:Array<Float>, arg2:Bool):Void
	{
		cpp_uiscrollview_zoomToRect(_tag, arg1, arg2);
	}
	private static var cpp_uiscrollview_zoomToRect = Lib.load("basis", "uiscrollview_zoomToRect", 3);

}
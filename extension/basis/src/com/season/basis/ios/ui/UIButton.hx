package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIButton extends UIControl
{
	public function new(?type:Int = 3)
	{
		super(type);
	}
	
	
	public var adjustsImageWhenDisabled(getAdjustsImageWhenDisabled, setAdjustsImageWhenDisabled) : Bool;
	private function setAdjustsImageWhenDisabled(value:Bool):Bool
	{
		cpp_uibutton_setAdjustsImageWhenDisabled(_tag, value);
		return cpp_uibutton_getAdjustsImageWhenDisabled(_tag);
	}
	private static var cpp_uibutton_setAdjustsImageWhenDisabled = Lib.load("basis", "uibutton_setAdjustsImageWhenDisabled", 2);
	private function getAdjustsImageWhenDisabled():Bool
	{
		return cpp_uibutton_getAdjustsImageWhenDisabled(_tag);
	}
	private static var cpp_uibutton_getAdjustsImageWhenDisabled = Lib.load("basis", "uibutton_getAdjustsImageWhenDisabled", 1);
	public var adjustsImageWhenHighlighted(getAdjustsImageWhenHighlighted, setAdjustsImageWhenHighlighted) : Bool;
	private function setAdjustsImageWhenHighlighted(value:Bool):Bool
	{
		cpp_uibutton_setAdjustsImageWhenHighlighted(_tag, value);
		return cpp_uibutton_getAdjustsImageWhenHighlighted(_tag);
	}
	private static var cpp_uibutton_setAdjustsImageWhenHighlighted = Lib.load("basis", "uibutton_setAdjustsImageWhenHighlighted", 2);
	private function getAdjustsImageWhenHighlighted():Bool
	{
		return cpp_uibutton_getAdjustsImageWhenHighlighted(_tag);
	}
	private static var cpp_uibutton_getAdjustsImageWhenHighlighted = Lib.load("basis", "uibutton_getAdjustsImageWhenHighlighted", 1);
	public var currentTitle(getCurrentTitle, null) : String;
		private function getCurrentTitle():String
	{
		return cpp_uibutton_getCurrentTitle(_tag);
	}
	private static var cpp_uibutton_getCurrentTitle = Lib.load("basis", "uibutton_getCurrentTitle", 1);
	public var reversesTitleShadowWhenHighlighted(getReversesTitleShadowWhenHighlighted, setReversesTitleShadowWhenHighlighted) : Bool;
	private function setReversesTitleShadowWhenHighlighted(value:Bool):Bool
	{
		cpp_uibutton_setReversesTitleShadowWhenHighlighted(_tag, value);
		return cpp_uibutton_getReversesTitleShadowWhenHighlighted(_tag);
	}
	private static var cpp_uibutton_setReversesTitleShadowWhenHighlighted = Lib.load("basis", "uibutton_setReversesTitleShadowWhenHighlighted", 2);
	private function getReversesTitleShadowWhenHighlighted():Bool
	{
		return cpp_uibutton_getReversesTitleShadowWhenHighlighted(_tag);
	}
	private static var cpp_uibutton_getReversesTitleShadowWhenHighlighted = Lib.load("basis", "uibutton_getReversesTitleShadowWhenHighlighted", 1);
	public var showsTouchWhenHighlighted(getShowsTouchWhenHighlighted, setShowsTouchWhenHighlighted) : Bool;
	private function setShowsTouchWhenHighlighted(value:Bool):Bool
	{
		cpp_uibutton_setShowsTouchWhenHighlighted(_tag, value);
		return cpp_uibutton_getShowsTouchWhenHighlighted(_tag);
	}
	private static var cpp_uibutton_setShowsTouchWhenHighlighted = Lib.load("basis", "uibutton_setShowsTouchWhenHighlighted", 2);
	private function getShowsTouchWhenHighlighted():Bool
	{
		return cpp_uibutton_getShowsTouchWhenHighlighted(_tag);
	}
	private static var cpp_uibutton_getShowsTouchWhenHighlighted = Lib.load("basis", "uibutton_getShowsTouchWhenHighlighted", 1);
	public var titleLabel(getTitleLabel, null) : UILabel;
		private function getTitleLabel():UILabel
	{
		return cpp_uibutton_getTitleLabel(_tag);
	}
	private static var cpp_uibutton_getTitleLabel = Lib.load("basis", "uibutton_getTitleLabel", 1);

	public function backgroundRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uibutton_backgroundRectForBounds(_tag, arg1);
	}
	private static var cpp_uibutton_backgroundRectForBounds = Lib.load("basis", "uibutton_backgroundRectForBounds", 2);

	public function contentRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uibutton_contentRectForBounds(_tag, arg1);
	}
	private static var cpp_uibutton_contentRectForBounds = Lib.load("basis", "uibutton_contentRectForBounds", 2);

	public function imageRectForContentRect(arg1:Array<Float>):Array<Float>
	{
		return cpp_uibutton_imageRectForContentRect(_tag, arg1);
	}
	private static var cpp_uibutton_imageRectForContentRect = Lib.load("basis", "uibutton_imageRectForContentRect", 2);

	public function setTitle(arg1:String, arg2:Int):Void
	{
		cpp_uibutton_setTitle(_tag, arg1, arg2);
	}
	private static var cpp_uibutton_setTitle = Lib.load("basis", "uibutton_setTitle", 3);

	public function titleForState(arg1:Int):String
	{
		return cpp_uibutton_titleForState(_tag, arg1);
	}
	private static var cpp_uibutton_titleForState = Lib.load("basis", "uibutton_titleForState", 2);

	public function titleRectForContentRect(arg1:Array<Float>):Array<Float>
	{
		return cpp_uibutton_titleRectForContentRect(_tag, arg1);
	}
	private static var cpp_uibutton_titleRectForContentRect = Lib.load("basis", "uibutton_titleRectForContentRect", 2);

}
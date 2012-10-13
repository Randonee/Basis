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
	
	
	public var currentTitle(getCurrentTitle, null) : String;
		private function getCurrentTitle():String
	{
		return cpp_uibutton_getCurrentTitle(_tag);
	}
	private static var cpp_uibutton_getCurrentTitle = Lib.load("basis", "uibutton_getCurrentTitle", 1);

	public function attributedTitleForState(arg1:Int):UIView
	{
		return cpp_uibutton_attributedTitleForState(_tag, arg1);
	}
	private static var cpp_uibutton_attributedTitleForState = Lib.load("basis", "uibutton_attributedTitleForState", 2);

	public function backgroundImageForState(arg1:Int):UIView
	{
		return cpp_uibutton_backgroundImageForState(_tag, arg1);
	}
	private static var cpp_uibutton_backgroundImageForState = Lib.load("basis", "uibutton_backgroundImageForState", 2);

	public function imageForState(arg1:Int):UIView
	{
		return cpp_uibutton_imageForState(_tag, arg1);
	}
	private static var cpp_uibutton_imageForState = Lib.load("basis", "uibutton_imageForState", 2);

	public function titleShadowColorForState(arg1:Int):UIView
	{
		return cpp_uibutton_titleShadowColorForState(_tag, arg1);
	}
	private static var cpp_uibutton_titleShadowColorForState = Lib.load("basis", "uibutton_titleShadowColorForState", 2);

	public function titleColorForState(arg1:Int):UIView
	{
		return cpp_uibutton_titleColorForState(_tag, arg1);
	}
	private static var cpp_uibutton_titleColorForState = Lib.load("basis", "uibutton_titleColorForState", 2);

	public function titleForState(arg1:Int):UIView
	{
		return cpp_uibutton_titleForState(_tag, arg1);
	}
	private static var cpp_uibutton_titleForState = Lib.load("basis", "uibutton_titleForState", 2);

	public function setAttributedTitle(arg1:UIView, arg2:Int):Void
	{
		cpp_uibutton_setAttributedTitle(_tag, arg1.tag, arg2);
	}
	private static var cpp_uibutton_setAttributedTitle = Lib.load("basis", "uibutton_setAttributedTitle", 3);

	public function setBackgroundImage(arg1:UIView, arg2:Int):Void
	{
		cpp_uibutton_setBackgroundImage(_tag, arg1.tag, arg2);
	}
	private static var cpp_uibutton_setBackgroundImage = Lib.load("basis", "uibutton_setBackgroundImage", 3);

	public function setImage(arg1:UIView, arg2:Int):Void
	{
		cpp_uibutton_setImage(_tag, arg1.tag, arg2);
	}
	private static var cpp_uibutton_setImage = Lib.load("basis", "uibutton_setImage", 3);

	public function setTitleShadowColor(arg1:UIView, arg2:Int):Void
	{
		cpp_uibutton_setTitleShadowColor(_tag, arg1.tag, arg2);
	}
	private static var cpp_uibutton_setTitleShadowColor = Lib.load("basis", "uibutton_setTitleShadowColor", 3);

	public function setTitleColor(arg1:UIView, arg2:Int):Void
	{
		cpp_uibutton_setTitleColor(_tag, arg1.tag, arg2);
	}
	private static var cpp_uibutton_setTitleColor = Lib.load("basis", "uibutton_setTitleColor", 3);

	public function setTitle(arg1:String, arg2:Int):Void
	{
		cpp_uibutton_setTitle(_tag, arg1, arg2);
	}
	private static var cpp_uibutton_setTitle = Lib.load("basis", "uibutton_setTitle", 3);
	public var titleLabel(getTitleLabel, null) : UILabel;
		private function getTitleLabel():UILabel
	{
		return cpp_uibutton_getTitleLabel(_tag);
	}
	private static var cpp_uibutton_getTitleLabel = Lib.load("basis", "uibutton_getTitleLabel", 1);
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
	public var buttonType(getButtonType, null) : Int;
		private function getButtonType():Int
	{
		return cpp_uibutton_getButtonType(_tag);
	}
	private static var cpp_uibutton_getButtonType = Lib.load("basis", "uibutton_getButtonType", 1);
	public var lineBreakMode(getLineBreakMode, setLineBreakMode) : Int;
	private function setLineBreakMode(value:Int):Int
	{
		cpp_uibutton_setLineBreakMode(_tag, value);
		return cpp_uibutton_getLineBreakMode(_tag);
	}
	private static var cpp_uibutton_setLineBreakMode = Lib.load("basis", "uibutton_setLineBreakMode", 2);
	private function getLineBreakMode():Int
	{
		return cpp_uibutton_getLineBreakMode(_tag);
	}
	private static var cpp_uibutton_getLineBreakMode = Lib.load("basis", "uibutton_getLineBreakMode", 1);

	public function image():UIView
	{
		return cpp_uibutton_image(_tag);
	}
	private static var cpp_uibutton_image = Lib.load("basis", "uibutton_image", 1);

	public function setTitle2(arg1:String):Void
	{
		cpp_uibutton_setTitle2(_tag, arg1);
	}
	private static var cpp_uibutton_setTitle2 = Lib.load("basis", "uibutton_setTitle2", 2);

	public function title():UIView
	{
		return cpp_uibutton_title(_tag);
	}
	private static var cpp_uibutton_title = Lib.load("basis", "uibutton_title", 1);

	public function crossfadeToImage(arg1:UIView, arg2:Int):Void
	{
		cpp_uibutton_crossfadeToImage(_tag, arg1.tag, arg2);
	}
	private static var cpp_uibutton_crossfadeToImage = Lib.load("basis", "uibutton_crossfadeToImage", 3);

	public function setBackgroundImage2(arg1:UIView, arg2:Int):Void
	{
		cpp_uibutton_setBackgroundImage2(_tag, arg1.tag, arg2);
	}
	private static var cpp_uibutton_setBackgroundImage2 = Lib.load("basis", "uibutton_setBackgroundImage2", 3);

	public function setImage2(arg1:UIView, arg2:Int):Void
	{
		cpp_uibutton_setImage2(_tag, arg1.tag, arg2);
	}
	private static var cpp_uibutton_setImage2 = Lib.load("basis", "uibutton_setImage2", 3);

	public function setTitleShadowColor2(arg1:UIView, arg2:Int):Void
	{
		cpp_uibutton_setTitleShadowColor2(_tag, arg1.tag, arg2);
	}
	private static var cpp_uibutton_setTitleShadowColor2 = Lib.load("basis", "uibutton_setTitleShadowColor2", 3);

	public function setTitleColor2(arg1:UIView, arg2:Int):Void
	{
		cpp_uibutton_setTitleColor2(_tag, arg1.tag, arg2);
	}
	private static var cpp_uibutton_setTitleColor2 = Lib.load("basis", "uibutton_setTitleColor2", 3);

	public function setTitle3(arg1:String, arg2:Int):Void
	{
		cpp_uibutton_setTitle3(_tag, arg1, arg2);
	}
	private static var cpp_uibutton_setTitle3 = Lib.load("basis", "uibutton_setTitle3", 3);

	public function setShowPressFeedback(arg1:Bool):Void
	{
		cpp_uibutton_setShowPressFeedback(_tag, arg1);
	}
	private static var cpp_uibutton_setShowPressFeedback = Lib.load("basis", "uibutton_setShowPressFeedback", 2);

	public function setDisabledDimsImage(arg1:Bool):Void
	{
		cpp_uibutton_setDisabledDimsImage(_tag, arg1);
	}
	private static var cpp_uibutton_setDisabledDimsImage = Lib.load("basis", "uibutton_setDisabledDimsImage", 2);

	public function autosizesToFit():Bool
	{
		return cpp_uibutton_autosizesToFit(_tag);
	}
	private static var cpp_uibutton_autosizesToFit = Lib.load("basis", "uibutton_autosizesToFit", 1);

	public function setAutosizesToFit(arg1:Bool):Void
	{
		cpp_uibutton_setAutosizesToFit(_tag, arg1);
	}
	private static var cpp_uibutton_setAutosizesToFit = Lib.load("basis", "uibutton_setAutosizesToFit", 2);

}
package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIImageView extends UIView
{
	public function new(?type:Int = 5)
	{
		super(type);
	}
	
	
	public var animationRepeatCount(getAnimationRepeatCount, setAnimationRepeatCount) : Int;
	private function setAnimationRepeatCount(value:Int):Int
	{
		cpp_uiimageview_setAnimationRepeatCount(_tag, value);
		return cpp_uiimageview_getAnimationRepeatCount(_tag);
	}
	private static var cpp_uiimageview_setAnimationRepeatCount = Lib.load("basis", "uiimageview_setAnimationRepeatCount", 2);
	private function getAnimationRepeatCount():Int
	{
		return cpp_uiimageview_getAnimationRepeatCount(_tag);
	}
	private static var cpp_uiimageview_getAnimationRepeatCount = Lib.load("basis", "uiimageview_getAnimationRepeatCount", 1);

	public function isAnimating():Bool
	{
		return cpp_uiimageview_isAnimating(_tag);
	}
	private static var cpp_uiimageview_isAnimating = Lib.load("basis", "uiimageview_isAnimating", 1);

	public function stopAnimating():Void
	{
		cpp_uiimageview_stopAnimating(_tag);
	}
	private static var cpp_uiimageview_stopAnimating = Lib.load("basis", "uiimageview_stopAnimating", 1);

	public function startAnimating():Void
	{
		cpp_uiimageview_startAnimating(_tag);
	}
	private static var cpp_uiimageview_startAnimating = Lib.load("basis", "uiimageview_startAnimating", 1);
	public var highlighted(getHighlighted, setHighlighted) : Bool;
	private function setHighlighted(value:Bool):Bool
	{
		cpp_uiimageview_setHighlighted(_tag, value);
		return cpp_uiimageview_getHighlighted(_tag);
	}
	private static var cpp_uiimageview_setHighlighted = Lib.load("basis", "uiimageview_setHighlighted", 2);
	private function getHighlighted():Bool
	{
		return cpp_uiimageview_getHighlighted(_tag);
	}
	private static var cpp_uiimageview_getHighlighted = Lib.load("basis", "uiimageview_getHighlighted", 1);

	public function setAnimating(arg1:Bool):Void
	{
		cpp_uiimageview_setAnimating(_tag, arg1);
	}
	private static var cpp_uiimageview_setAnimating = Lib.load("basis", "uiimageview_setAnimating", 2);

	public function useBlockyMagnificationInClassic():Bool
	{
		return cpp_uiimageview_useBlockyMagnificationInClassic(_tag);
	}
	private static var cpp_uiimageview_useBlockyMagnificationInClassic = Lib.load("basis", "uiimageview_useBlockyMagnificationInClassic", 1);

}
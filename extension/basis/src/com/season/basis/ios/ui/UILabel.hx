package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UILabel extends UIView
{
	public function new(?type:Int = 1)
	{
		super(type);
	}
	
	
	public var adjustsFontSizeToFitWidth(getAdjustsFontSizeToFitWidth, setAdjustsFontSizeToFitWidth) : Bool;
	private function setAdjustsFontSizeToFitWidth(value:Bool):Bool
	{
		cpp_uilabel_setAdjustsFontSizeToFitWidth(_tag, value);
		return cpp_uilabel_getAdjustsFontSizeToFitWidth(_tag);
	}
	private static var cpp_uilabel_setAdjustsFontSizeToFitWidth = Lib.load("basis", "uilabel_setAdjustsFontSizeToFitWidth", 2);
	private function getAdjustsFontSizeToFitWidth():Bool
	{
		return cpp_uilabel_getAdjustsFontSizeToFitWidth(_tag);
	}
	private static var cpp_uilabel_getAdjustsFontSizeToFitWidth = Lib.load("basis", "uilabel_getAdjustsFontSizeToFitWidth", 1);
	public var adjustsLetterSpacingToFitWidth(getAdjustsLetterSpacingToFitWidth, setAdjustsLetterSpacingToFitWidth) : Bool;
	private function setAdjustsLetterSpacingToFitWidth(value:Bool):Bool
	{
		cpp_uilabel_setAdjustsLetterSpacingToFitWidth(_tag, value);
		return cpp_uilabel_getAdjustsLetterSpacingToFitWidth(_tag);
	}
	private static var cpp_uilabel_setAdjustsLetterSpacingToFitWidth = Lib.load("basis", "uilabel_setAdjustsLetterSpacingToFitWidth", 2);
	private function getAdjustsLetterSpacingToFitWidth():Bool
	{
		return cpp_uilabel_getAdjustsLetterSpacingToFitWidth(_tag);
	}
	private static var cpp_uilabel_getAdjustsLetterSpacingToFitWidth = Lib.load("basis", "uilabel_getAdjustsLetterSpacingToFitWidth", 1);
	public var enabled(getEnabled, setEnabled) : Bool;
	private function setEnabled(value:Bool):Bool
	{
		cpp_uilabel_setEnabled(_tag, value);
		return cpp_uilabel_getEnabled(_tag);
	}
	private static var cpp_uilabel_setEnabled = Lib.load("basis", "uilabel_setEnabled", 2);
	private function getEnabled():Bool
	{
		return cpp_uilabel_getEnabled(_tag);
	}
	private static var cpp_uilabel_getEnabled = Lib.load("basis", "uilabel_getEnabled", 1);
	public var highlighted(getHighlighted, setHighlighted) : Bool;
	private function setHighlighted(value:Bool):Bool
	{
		cpp_uilabel_setHighlighted(_tag, value);
		return cpp_uilabel_getHighlighted(_tag);
	}
	private static var cpp_uilabel_setHighlighted = Lib.load("basis", "uilabel_setHighlighted", 2);
	private function getHighlighted():Bool
	{
		return cpp_uilabel_getHighlighted(_tag);
	}
	private static var cpp_uilabel_getHighlighted = Lib.load("basis", "uilabel_getHighlighted", 1);
	public var text(getText, setText) : String;
	private function setText(value:String):String
	{
		cpp_uilabel_setText(_tag, value);
		return cpp_uilabel_getText(_tag);
	}
	private static var cpp_uilabel_setText = Lib.load("basis", "uilabel_setText", 2);
	private function getText():String
	{
		return cpp_uilabel_getText(_tag);
	}
	private static var cpp_uilabel_getText = Lib.load("basis", "uilabel_getText", 1);

	public function drawTextInRect(arg1:Array<Float>):Void
	{
		cpp_uilabel_drawTextInRect(_tag, arg1);
	}
	private static var cpp_uilabel_drawTextInRect = Lib.load("basis", "uilabel_drawTextInRect", 2);

}
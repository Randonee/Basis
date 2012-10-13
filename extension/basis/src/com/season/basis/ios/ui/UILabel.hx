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
	
	

	public function drawsUnderline():Bool
	{
		return cpp_uilabel_drawsUnderline(_tag);
	}
	private static var cpp_uilabel_drawsUnderline = Lib.load("basis", "uilabel_drawsUnderline", 1);

	public function setDrawsUnderline(arg1:Bool):Void
	{
		cpp_uilabel_setDrawsUnderline(_tag, arg1);
	}
	private static var cpp_uilabel_setDrawsUnderline = Lib.load("basis", "uilabel_setDrawsUnderline", 2);

	public function letterpressStyle():UIView
	{
		return cpp_uilabel_letterpressStyle(_tag);
	}
	private static var cpp_uilabel_letterpressStyle = Lib.load("basis", "uilabel_letterpressStyle", 1);

	public function setLetterpressStyle(arg1:UIView):Void
	{
		cpp_uilabel_setLetterpressStyle(_tag, arg1.tag);
	}
	private static var cpp_uilabel_setLetterpressStyle = Lib.load("basis", "uilabel_setLetterpressStyle", 2);

	public function drawsLetterpress():Bool
	{
		return cpp_uilabel_drawsLetterpress(_tag);
	}
	private static var cpp_uilabel_drawsLetterpress = Lib.load("basis", "uilabel_drawsLetterpress", 1);

	public function setDrawsLetterpress(arg1:Bool):Void
	{
		cpp_uilabel_setDrawsLetterpress(_tag, arg1);
	}
	private static var cpp_uilabel_setDrawsLetterpress = Lib.load("basis", "uilabel_setDrawsLetterpress", 2);

	public function setMarqueeRunning(arg1:Bool):Void
	{
		cpp_uilabel_setMarqueeRunning(_tag, arg1);
	}
	private static var cpp_uilabel_setMarqueeRunning = Lib.load("basis", "uilabel_setMarqueeRunning", 2);

	public function marqueeRunning():Bool
	{
		return cpp_uilabel_marqueeRunning(_tag);
	}
	private static var cpp_uilabel_marqueeRunning = Lib.load("basis", "uilabel_marqueeRunning", 1);

	public function setMarqueeEnabled(arg1:Bool):Void
	{
		cpp_uilabel_setMarqueeEnabled(_tag, arg1);
	}
	private static var cpp_uilabel_setMarqueeEnabled = Lib.load("basis", "uilabel_setMarqueeEnabled", 2);

	public function drawTextInRect(arg1:Array<Float>):Void
	{
		cpp_uilabel_drawTextInRect(_tag, arg1);
	}
	private static var cpp_uilabel_drawTextInRect = Lib.load("basis", "uilabel_drawTextInRect", 2);
	public var baselineAdjustment(getBaselineAdjustment, setBaselineAdjustment) : Int;
	private function setBaselineAdjustment(value:Int):Int
	{
		cpp_uilabel_setBaselineAdjustment(_tag, value);
		return cpp_uilabel_getBaselineAdjustment(_tag);
	}
	private static var cpp_uilabel_setBaselineAdjustment = Lib.load("basis", "uilabel_setBaselineAdjustment", 2);
	private function getBaselineAdjustment():Int
	{
		return cpp_uilabel_getBaselineAdjustment(_tag);
	}
	private static var cpp_uilabel_getBaselineAdjustment = Lib.load("basis", "uilabel_getBaselineAdjustment", 1);
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
	public var numberOfLines(getNumberOfLines, setNumberOfLines) : Int;
	private function setNumberOfLines(value:Int):Int
	{
		cpp_uilabel_setNumberOfLines(_tag, value);
		return cpp_uilabel_getNumberOfLines(_tag);
	}
	private static var cpp_uilabel_setNumberOfLines = Lib.load("basis", "uilabel_setNumberOfLines", 2);
	private function getNumberOfLines():Int
	{
		return cpp_uilabel_getNumberOfLines(_tag);
	}
	private static var cpp_uilabel_getNumberOfLines = Lib.load("basis", "uilabel_getNumberOfLines", 1);
	public var lineBreakMode(getLineBreakMode, setLineBreakMode) : Int;
	private function setLineBreakMode(value:Int):Int
	{
		cpp_uilabel_setLineBreakMode(_tag, value);
		return cpp_uilabel_getLineBreakMode(_tag);
	}
	private static var cpp_uilabel_setLineBreakMode = Lib.load("basis", "uilabel_setLineBreakMode", 2);
	private function getLineBreakMode():Int
	{
		return cpp_uilabel_getLineBreakMode(_tag);
	}
	private static var cpp_uilabel_getLineBreakMode = Lib.load("basis", "uilabel_getLineBreakMode", 1);
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

	public function currentTextColor():UIView
	{
		return cpp_uilabel_currentTextColor(_tag);
	}
	private static var cpp_uilabel_currentTextColor = Lib.load("basis", "uilabel_currentTextColor", 1);
	public var textAlignment(getTextAlignment, setTextAlignment) : Int;
	private function setTextAlignment(value:Int):Int
	{
		cpp_uilabel_setTextAlignment(_tag, value);
		return cpp_uilabel_getTextAlignment(_tag);
	}
	private static var cpp_uilabel_setTextAlignment = Lib.load("basis", "uilabel_setTextAlignment", 2);
	private function getTextAlignment():Int
	{
		return cpp_uilabel_getTextAlignment(_tag);
	}
	private static var cpp_uilabel_getTextAlignment = Lib.load("basis", "uilabel_getTextAlignment", 1);
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

	public function isTextFieldCenteredLabel():Bool
	{
		return cpp_uilabel_isTextFieldCenteredLabel(_tag);
	}
	private static var cpp_uilabel_isTextFieldCenteredLabel = Lib.load("basis", "uilabel_isTextFieldCenteredLabel", 1);

	public function drawContentsInRect(arg1:Array<Float>):Void
	{
		cpp_uilabel_drawContentsInRect(_tag, arg1);
	}
	private static var cpp_uilabel_drawContentsInRect = Lib.load("basis", "uilabel_drawContentsInRect", 2);

	public function centersHorizontally():Bool
	{
		return cpp_uilabel_centersHorizontally(_tag);
	}
	private static var cpp_uilabel_centersHorizontally = Lib.load("basis", "uilabel_centersHorizontally", 1);

	public function setCentersHorizontally(arg1:Bool):Void
	{
		cpp_uilabel_setCentersHorizontally(_tag, arg1);
	}
	private static var cpp_uilabel_setCentersHorizontally = Lib.load("basis", "uilabel_setCentersHorizontally", 2);

	public function color():UIView
	{
		return cpp_uilabel_color(_tag);
	}
	private static var cpp_uilabel_color = Lib.load("basis", "uilabel_color", 1);

	public function setColor(arg1:UIView):Void
	{
		cpp_uilabel_setColor(_tag, arg1.tag);
	}
	private static var cpp_uilabel_setColor = Lib.load("basis", "uilabel_setColor", 2);

	public function autotrackTextToFit():Bool
	{
		return cpp_uilabel_autotrackTextToFit(_tag);
	}
	private static var cpp_uilabel_autotrackTextToFit = Lib.load("basis", "uilabel_autotrackTextToFit", 1);

	public function setAutotrackTextToFit(arg1:Bool):Void
	{
		cpp_uilabel_setAutotrackTextToFit(_tag, arg1);
	}
	private static var cpp_uilabel_setAutotrackTextToFit = Lib.load("basis", "uilabel_setAutotrackTextToFit", 2);

}
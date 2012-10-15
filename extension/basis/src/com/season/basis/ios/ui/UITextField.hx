package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UITextField extends UIControl
{
	public function new(?type:Int = 4)
	{
		super(type);
	}
	
	
	public var adjustsFontSizeToFitWidth(getAdjustsFontSizeToFitWidth, setAdjustsFontSizeToFitWidth) : Bool;
	private function setAdjustsFontSizeToFitWidth(value:Bool):Bool
	{
		cpp_uitextfield_setAdjustsFontSizeToFitWidth(_tag, value);
		return cpp_uitextfield_getAdjustsFontSizeToFitWidth(_tag);
	}
	private static var cpp_uitextfield_setAdjustsFontSizeToFitWidth = Lib.load("basis", "uitextfield_setAdjustsFontSizeToFitWidth", 2);
	private function getAdjustsFontSizeToFitWidth():Bool
	{
		return cpp_uitextfield_getAdjustsFontSizeToFitWidth(_tag);
	}
	private static var cpp_uitextfield_getAdjustsFontSizeToFitWidth = Lib.load("basis", "uitextfield_getAdjustsFontSizeToFitWidth", 1);
	public var allowsEditingTextAttributes(getAllowsEditingTextAttributes, setAllowsEditingTextAttributes) : Bool;
	private function setAllowsEditingTextAttributes(value:Bool):Bool
	{
		cpp_uitextfield_setAllowsEditingTextAttributes(_tag, value);
		return cpp_uitextfield_getAllowsEditingTextAttributes(_tag);
	}
	private static var cpp_uitextfield_setAllowsEditingTextAttributes = Lib.load("basis", "uitextfield_setAllowsEditingTextAttributes", 2);
	private function getAllowsEditingTextAttributes():Bool
	{
		return cpp_uitextfield_getAllowsEditingTextAttributes(_tag);
	}
	private static var cpp_uitextfield_getAllowsEditingTextAttributes = Lib.load("basis", "uitextfield_getAllowsEditingTextAttributes", 1);
	public var clearsOnBeginEditing(getClearsOnBeginEditing, setClearsOnBeginEditing) : Bool;
	private function setClearsOnBeginEditing(value:Bool):Bool
	{
		cpp_uitextfield_setClearsOnBeginEditing(_tag, value);
		return cpp_uitextfield_getClearsOnBeginEditing(_tag);
	}
	private static var cpp_uitextfield_setClearsOnBeginEditing = Lib.load("basis", "uitextfield_setClearsOnBeginEditing", 2);
	private function getClearsOnBeginEditing():Bool
	{
		return cpp_uitextfield_getClearsOnBeginEditing(_tag);
	}
	private static var cpp_uitextfield_getClearsOnBeginEditing = Lib.load("basis", "uitextfield_getClearsOnBeginEditing", 1);
	public var clearsOnInsertion(getClearsOnInsertion, setClearsOnInsertion) : Bool;
	private function setClearsOnInsertion(value:Bool):Bool
	{
		cpp_uitextfield_setClearsOnInsertion(_tag, value);
		return cpp_uitextfield_getClearsOnInsertion(_tag);
	}
	private static var cpp_uitextfield_setClearsOnInsertion = Lib.load("basis", "uitextfield_setClearsOnInsertion", 2);
	private function getClearsOnInsertion():Bool
	{
		return cpp_uitextfield_getClearsOnInsertion(_tag);
	}
	private static var cpp_uitextfield_getClearsOnInsertion = Lib.load("basis", "uitextfield_getClearsOnInsertion", 1);
	public var editing(getEditing, null) : Bool;
		private function getEditing():Bool
	{
		return cpp_uitextfield_getEditing(_tag);
	}
	private static var cpp_uitextfield_getEditing = Lib.load("basis", "uitextfield_getEditing", 1);
	public var leftView(getLeftView, setLeftView) : UIView;
	private function setLeftView(value:UIView):UIView
	{
		cpp_uitextfield_setLeftView(_tag, value);
		return cpp_uitextfield_getLeftView(_tag);
	}
	private static var cpp_uitextfield_setLeftView = Lib.load("basis", "uitextfield_setLeftView", 2);
	private function getLeftView():UIView
	{
		return cpp_uitextfield_getLeftView(_tag);
	}
	private static var cpp_uitextfield_getLeftView = Lib.load("basis", "uitextfield_getLeftView", 1);
	public var placeholder(getPlaceholder, setPlaceholder) : String;
	private function setPlaceholder(value:String):String
	{
		cpp_uitextfield_setPlaceholder(_tag, value);
		return cpp_uitextfield_getPlaceholder(_tag);
	}
	private static var cpp_uitextfield_setPlaceholder = Lib.load("basis", "uitextfield_setPlaceholder", 2);
	private function getPlaceholder():String
	{
		return cpp_uitextfield_getPlaceholder(_tag);
	}
	private static var cpp_uitextfield_getPlaceholder = Lib.load("basis", "uitextfield_getPlaceholder", 1);
	public var rightView(getRightView, setRightView) : UIView;
	private function setRightView(value:UIView):UIView
	{
		cpp_uitextfield_setRightView(_tag, value);
		return cpp_uitextfield_getRightView(_tag);
	}
	private static var cpp_uitextfield_setRightView = Lib.load("basis", "uitextfield_setRightView", 2);
	private function getRightView():UIView
	{
		return cpp_uitextfield_getRightView(_tag);
	}
	private static var cpp_uitextfield_getRightView = Lib.load("basis", "uitextfield_getRightView", 1);
	public var text(getText, setText) : String;
	private function setText(value:String):String
	{
		cpp_uitextfield_setText(_tag, value);
		return cpp_uitextfield_getText(_tag);
	}
	private static var cpp_uitextfield_setText = Lib.load("basis", "uitextfield_setText", 2);
	private function getText():String
	{
		return cpp_uitextfield_getText(_tag);
	}
	private static var cpp_uitextfield_getText = Lib.load("basis", "uitextfield_getText", 1);

	public function borderRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uitextfield_borderRectForBounds(_tag, arg1);
	}
	private static var cpp_uitextfield_borderRectForBounds = Lib.load("basis", "uitextfield_borderRectForBounds", 2);

	public function clearButtonRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uitextfield_clearButtonRectForBounds(_tag, arg1);
	}
	private static var cpp_uitextfield_clearButtonRectForBounds = Lib.load("basis", "uitextfield_clearButtonRectForBounds", 2);

	public function drawPlaceholderInRect(arg1:Array<Float>):Void
	{
		cpp_uitextfield_drawPlaceholderInRect(_tag, arg1);
	}
	private static var cpp_uitextfield_drawPlaceholderInRect = Lib.load("basis", "uitextfield_drawPlaceholderInRect", 2);

	public function drawTextInRect(arg1:Array<Float>):Void
	{
		cpp_uitextfield_drawTextInRect(_tag, arg1);
	}
	private static var cpp_uitextfield_drawTextInRect = Lib.load("basis", "uitextfield_drawTextInRect", 2);

	public function editingRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uitextfield_editingRectForBounds(_tag, arg1);
	}
	private static var cpp_uitextfield_editingRectForBounds = Lib.load("basis", "uitextfield_editingRectForBounds", 2);

	public function leftViewRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uitextfield_leftViewRectForBounds(_tag, arg1);
	}
	private static var cpp_uitextfield_leftViewRectForBounds = Lib.load("basis", "uitextfield_leftViewRectForBounds", 2);

	public function placeholderRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uitextfield_placeholderRectForBounds(_tag, arg1);
	}
	private static var cpp_uitextfield_placeholderRectForBounds = Lib.load("basis", "uitextfield_placeholderRectForBounds", 2);

	public function rightViewRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uitextfield_rightViewRectForBounds(_tag, arg1);
	}
	private static var cpp_uitextfield_rightViewRectForBounds = Lib.load("basis", "uitextfield_rightViewRectForBounds", 2);

	public function textRectForBounds(arg1:Array<Float>):Array<Float>
	{
		return cpp_uitextfield_textRectForBounds(_tag, arg1);
	}
	private static var cpp_uitextfield_textRectForBounds = Lib.load("basis", "uitextfield_textRectForBounds", 2);

}
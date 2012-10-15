package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIView extends UIResponder
{
	public function new(?type:Int = 0)
	{
		super(type);
	}
	
	
	public var autoresizesSubviews(getAutoresizesSubviews, setAutoresizesSubviews) : Bool;
	private function setAutoresizesSubviews(value:Bool):Bool
	{
		cpp_uiview_setAutoresizesSubviews(_tag, value);
		return cpp_uiview_getAutoresizesSubviews(_tag);
	}
	private static var cpp_uiview_setAutoresizesSubviews = Lib.load("basis", "uiview_setAutoresizesSubviews", 2);
	private function getAutoresizesSubviews():Bool
	{
		return cpp_uiview_getAutoresizesSubviews(_tag);
	}
	private static var cpp_uiview_getAutoresizesSubviews = Lib.load("basis", "uiview_getAutoresizesSubviews", 1);
	public var bounds(getBounds, setBounds) : Array<Float>;
	private function setBounds(value:Array<Float>):Array<Float>
	{
		cpp_uiview_setBounds(_tag, value);
		return cpp_uiview_getBounds(_tag);
	}
	private static var cpp_uiview_setBounds = Lib.load("basis", "uiview_setBounds", 2);
	private function getBounds():Array<Float>
	{
		return cpp_uiview_getBounds(_tag);
	}
	private static var cpp_uiview_getBounds = Lib.load("basis", "uiview_getBounds", 1);
	public var clearsContextBeforeDrawing(getClearsContextBeforeDrawing, setClearsContextBeforeDrawing) : Bool;
	private function setClearsContextBeforeDrawing(value:Bool):Bool
	{
		cpp_uiview_setClearsContextBeforeDrawing(_tag, value);
		return cpp_uiview_getClearsContextBeforeDrawing(_tag);
	}
	private static var cpp_uiview_setClearsContextBeforeDrawing = Lib.load("basis", "uiview_setClearsContextBeforeDrawing", 2);
	private function getClearsContextBeforeDrawing():Bool
	{
		return cpp_uiview_getClearsContextBeforeDrawing(_tag);
	}
	private static var cpp_uiview_getClearsContextBeforeDrawing = Lib.load("basis", "uiview_getClearsContextBeforeDrawing", 1);
	public var clipsToBounds(getClipsToBounds, setClipsToBounds) : Bool;
	private function setClipsToBounds(value:Bool):Bool
	{
		cpp_uiview_setClipsToBounds(_tag, value);
		return cpp_uiview_getClipsToBounds(_tag);
	}
	private static var cpp_uiview_setClipsToBounds = Lib.load("basis", "uiview_setClipsToBounds", 2);
	private function getClipsToBounds():Bool
	{
		return cpp_uiview_getClipsToBounds(_tag);
	}
	private static var cpp_uiview_getClipsToBounds = Lib.load("basis", "uiview_getClipsToBounds", 1);
	public var exclusiveTouch(getExclusiveTouch, setExclusiveTouch) : Bool;
	private function setExclusiveTouch(value:Bool):Bool
	{
		cpp_uiview_setExclusiveTouch(_tag, value);
		return cpp_uiview_getExclusiveTouch(_tag);
	}
	private static var cpp_uiview_setExclusiveTouch = Lib.load("basis", "uiview_setExclusiveTouch", 2);
	private function getExclusiveTouch():Bool
	{
		return cpp_uiview_getExclusiveTouch(_tag);
	}
	private static var cpp_uiview_getExclusiveTouch = Lib.load("basis", "uiview_getExclusiveTouch", 1);
	public var frame(getFrame, setFrame) : Array<Float>;
	private function setFrame(value:Array<Float>):Array<Float>
	{
		cpp_uiview_setFrame(_tag, value);
		return cpp_uiview_getFrame(_tag);
	}
	private static var cpp_uiview_setFrame = Lib.load("basis", "uiview_setFrame", 2);
	private function getFrame():Array<Float>
	{
		return cpp_uiview_getFrame(_tag);
	}
	private static var cpp_uiview_getFrame = Lib.load("basis", "uiview_getFrame", 1);
	public var hidden(getHidden, setHidden) : Bool;
	private function setHidden(value:Bool):Bool
	{
		cpp_uiview_setHidden(_tag, value);
		return cpp_uiview_getHidden(_tag);
	}
	private static var cpp_uiview_setHidden = Lib.load("basis", "uiview_setHidden", 2);
	private function getHidden():Bool
	{
		return cpp_uiview_getHidden(_tag);
	}
	private static var cpp_uiview_getHidden = Lib.load("basis", "uiview_getHidden", 1);
	public var multipleTouchEnabled(getMultipleTouchEnabled, setMultipleTouchEnabled) : Bool;
	private function setMultipleTouchEnabled(value:Bool):Bool
	{
		cpp_uiview_setMultipleTouchEnabled(_tag, value);
		return cpp_uiview_getMultipleTouchEnabled(_tag);
	}
	private static var cpp_uiview_setMultipleTouchEnabled = Lib.load("basis", "uiview_setMultipleTouchEnabled", 2);
	private function getMultipleTouchEnabled():Bool
	{
		return cpp_uiview_getMultipleTouchEnabled(_tag);
	}
	private static var cpp_uiview_getMultipleTouchEnabled = Lib.load("basis", "uiview_getMultipleTouchEnabled", 1);
	public var opaque(getOpaque, setOpaque) : Bool;
	private function setOpaque(value:Bool):Bool
	{
		cpp_uiview_setOpaque(_tag, value);
		return cpp_uiview_getOpaque(_tag);
	}
	private static var cpp_uiview_setOpaque = Lib.load("basis", "uiview_setOpaque", 2);
	private function getOpaque():Bool
	{
		return cpp_uiview_getOpaque(_tag);
	}
	private static var cpp_uiview_getOpaque = Lib.load("basis", "uiview_getOpaque", 1);
	public var restorationIdentifier(getRestorationIdentifier, setRestorationIdentifier) : String;
	private function setRestorationIdentifier(value:String):String
	{
		cpp_uiview_setRestorationIdentifier(_tag, value);
		return cpp_uiview_getRestorationIdentifier(_tag);
	}
	private static var cpp_uiview_setRestorationIdentifier = Lib.load("basis", "uiview_setRestorationIdentifier", 2);
	private function getRestorationIdentifier():String
	{
		return cpp_uiview_getRestorationIdentifier(_tag);
	}
	private static var cpp_uiview_getRestorationIdentifier = Lib.load("basis", "uiview_getRestorationIdentifier", 1);
	public var superview(getSuperview, null) : UIView;
		private function getSuperview():UIView
	{
		return cpp_uiview_getSuperview(_tag);
	}
	private static var cpp_uiview_getSuperview = Lib.load("basis", "uiview_getSuperview", 1);
	public var userInteractionEnabled(getUserInteractionEnabled, setUserInteractionEnabled) : Bool;
	private function setUserInteractionEnabled(value:Bool):Bool
	{
		cpp_uiview_setUserInteractionEnabled(_tag, value);
		return cpp_uiview_getUserInteractionEnabled(_tag);
	}
	private static var cpp_uiview_setUserInteractionEnabled = Lib.load("basis", "uiview_setUserInteractionEnabled", 2);
	private function getUserInteractionEnabled():Bool
	{
		return cpp_uiview_getUserInteractionEnabled(_tag);
	}
	private static var cpp_uiview_getUserInteractionEnabled = Lib.load("basis", "uiview_getUserInteractionEnabled", 1);

	public function addSubview(arg1:UIView):Void
	{
		cpp_uiview_addSubview(_tag, arg1.tag);
	}
	private static var cpp_uiview_addSubview = Lib.load("basis", "uiview_addSubview", 2);

	public function alignmentRectForFrame(arg1:Array<Float>):Array<Float>
	{
		return cpp_uiview_alignmentRectForFrame(_tag, arg1);
	}
	private static var cpp_uiview_alignmentRectForFrame = Lib.load("basis", "uiview_alignmentRectForFrame", 2);

	public function bringSubviewToFront(arg1:UIView):Void
	{
		cpp_uiview_bringSubviewToFront(_tag, arg1.tag);
	}
	private static var cpp_uiview_bringSubviewToFront = Lib.load("basis", "uiview_bringSubviewToFront", 2);

	public function didAddSubview(arg1:UIView):Void
	{
		cpp_uiview_didAddSubview(_tag, arg1.tag);
	}
	private static var cpp_uiview_didAddSubview = Lib.load("basis", "uiview_didAddSubview", 2);

	public function didMoveToSuperview():Void
	{
		cpp_uiview_didMoveToSuperview(_tag);
	}
	private static var cpp_uiview_didMoveToSuperview = Lib.load("basis", "uiview_didMoveToSuperview", 1);

	public function didMoveToWindow():Void
	{
		cpp_uiview_didMoveToWindow(_tag);
	}
	private static var cpp_uiview_didMoveToWindow = Lib.load("basis", "uiview_didMoveToWindow", 1);

	public function drawRect(arg1:Array<Float>):Void
	{
		cpp_uiview_drawRect(_tag, arg1);
	}
	private static var cpp_uiview_drawRect = Lib.load("basis", "uiview_drawRect", 2);

	public function endEditing(arg1:Bool):Bool
	{
		return cpp_uiview_endEditing(_tag, arg1);
	}
	private static var cpp_uiview_endEditing = Lib.load("basis", "uiview_endEditing", 2);

	public function exerciseAmbiguityInLayout():Void
	{
		cpp_uiview_exerciseAmbiguityInLayout(_tag);
	}
	private static var cpp_uiview_exerciseAmbiguityInLayout = Lib.load("basis", "uiview_exerciseAmbiguityInLayout", 1);

	public function frameForAlignmentRect(arg1:Array<Float>):Array<Float>
	{
		return cpp_uiview_frameForAlignmentRect(_tag, arg1);
	}
	private static var cpp_uiview_frameForAlignmentRect = Lib.load("basis", "uiview_frameForAlignmentRect", 2);

	public function hasAmbiguousLayout():Bool
	{
		return cpp_uiview_hasAmbiguousLayout(_tag);
	}
	private static var cpp_uiview_hasAmbiguousLayout = Lib.load("basis", "uiview_hasAmbiguousLayout", 1);

	public function insertSubview(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_insertSubview(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_insertSubview = Lib.load("basis", "uiview_insertSubview", 3);

	public function insertSubview2(arg1:UIView, arg2:UIView):Void
	{
		cpp_uiview_insertSubview2(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uiview_insertSubview2 = Lib.load("basis", "uiview_insertSubview2", 3);

	public function invalidateIntrinsicContentSize():Void
	{
		cpp_uiview_invalidateIntrinsicContentSize(_tag);
	}
	private static var cpp_uiview_invalidateIntrinsicContentSize = Lib.load("basis", "uiview_invalidateIntrinsicContentSize", 1);

	public function isDescendantOfView(arg1:UIView):Bool
	{
		return cpp_uiview_isDescendantOfView(_tag, arg1.tag);
	}
	private static var cpp_uiview_isDescendantOfView = Lib.load("basis", "uiview_isDescendantOfView", 2);

	public function layoutIfNeeded():Void
	{
		cpp_uiview_layoutIfNeeded(_tag);
	}
	private static var cpp_uiview_layoutIfNeeded = Lib.load("basis", "uiview_layoutIfNeeded", 1);

	public function layoutSubviews():Void
	{
		cpp_uiview_layoutSubviews(_tag);
	}
	private static var cpp_uiview_layoutSubviews = Lib.load("basis", "uiview_layoutSubviews", 1);

	public function needsUpdateConstraints():Bool
	{
		return cpp_uiview_needsUpdateConstraints(_tag);
	}
	private static var cpp_uiview_needsUpdateConstraints = Lib.load("basis", "uiview_needsUpdateConstraints", 1);

	public function removeFromSuperview():Void
	{
		cpp_uiview_removeFromSuperview(_tag);
	}
	private static var cpp_uiview_removeFromSuperview = Lib.load("basis", "uiview_removeFromSuperview", 1);

	public function sendSubviewToBack(arg1:UIView):Void
	{
		cpp_uiview_sendSubviewToBack(_tag, arg1.tag);
	}
	private static var cpp_uiview_sendSubviewToBack = Lib.load("basis", "uiview_sendSubviewToBack", 2);

	public function setNeedsDisplay():Void
	{
		cpp_uiview_setNeedsDisplay(_tag);
	}
	private static var cpp_uiview_setNeedsDisplay = Lib.load("basis", "uiview_setNeedsDisplay", 1);

	public function setNeedsDisplayInRect(arg1:Array<Float>):Void
	{
		cpp_uiview_setNeedsDisplayInRect(_tag, arg1);
	}
	private static var cpp_uiview_setNeedsDisplayInRect = Lib.load("basis", "uiview_setNeedsDisplayInRect", 2);

	public function setNeedsLayout():Void
	{
		cpp_uiview_setNeedsLayout(_tag);
	}
	private static var cpp_uiview_setNeedsLayout = Lib.load("basis", "uiview_setNeedsLayout", 1);

	public function setNeedsUpdateConstraints():Void
	{
		cpp_uiview_setNeedsUpdateConstraints(_tag);
	}
	private static var cpp_uiview_setNeedsUpdateConstraints = Lib.load("basis", "uiview_setNeedsUpdateConstraints", 1);

	public function setTranslatesAutoresizingMaskIntoConstraints(arg1:Bool):Void
	{
		cpp_uiview_setTranslatesAutoresizingMaskIntoConstraints(_tag, arg1);
	}
	private static var cpp_uiview_setTranslatesAutoresizingMaskIntoConstraints = Lib.load("basis", "uiview_setTranslatesAutoresizingMaskIntoConstraints", 2);

	public function sizeToFit():Void
	{
		cpp_uiview_sizeToFit(_tag);
	}
	private static var cpp_uiview_sizeToFit = Lib.load("basis", "uiview_sizeToFit", 1);

	public function translatesAutoresizingMaskIntoConstraints():Bool
	{
		return cpp_uiview_translatesAutoresizingMaskIntoConstraints(_tag);
	}
	private static var cpp_uiview_translatesAutoresizingMaskIntoConstraints = Lib.load("basis", "uiview_translatesAutoresizingMaskIntoConstraints", 1);

	public function updateConstraints():Void
	{
		cpp_uiview_updateConstraints(_tag);
	}
	private static var cpp_uiview_updateConstraints = Lib.load("basis", "uiview_updateConstraints", 1);

	public function updateConstraintsIfNeeded():Void
	{
		cpp_uiview_updateConstraintsIfNeeded(_tag);
	}
	private static var cpp_uiview_updateConstraintsIfNeeded = Lib.load("basis", "uiview_updateConstraintsIfNeeded", 1);

	public function viewForBaselineLayout():UIView
	{
		return cpp_uiview_viewForBaselineLayout(_tag);
	}
	private static var cpp_uiview_viewForBaselineLayout = Lib.load("basis", "uiview_viewForBaselineLayout", 1);

	public function willMoveToSuperview(arg1:UIView):Void
	{
		cpp_uiview_willMoveToSuperview(_tag, arg1.tag);
	}
	private static var cpp_uiview_willMoveToSuperview = Lib.load("basis", "uiview_willMoveToSuperview", 2);

	public function willRemoveSubview(arg1:UIView):Void
	{
		cpp_uiview_willRemoveSubview(_tag, arg1.tag);
	}
	private static var cpp_uiview_willRemoveSubview = Lib.load("basis", "uiview_willRemoveSubview", 2);

}
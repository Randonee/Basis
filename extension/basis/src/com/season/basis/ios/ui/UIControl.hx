package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIControl extends UIView
{
	public function new(?type:Int = 2)
	{
		super(type);
	}
	
	

	public function sendActionsForControlEvents(arg1:Int):Void
	{
		cpp_uicontrol_sendActionsForControlEvents(_tag, arg1);
	}
	private static var cpp_uicontrol_sendActionsForControlEvents = Lib.load("basis", "uicontrol_sendActionsForControlEvents", 2);

	public function actionsForTarget(arg1:UIView, arg2:Int):UIView
	{
		return cpp_uicontrol_actionsForTarget(_tag, arg1.tag, arg2);
	}
	private static var cpp_uicontrol_actionsForTarget = Lib.load("basis", "uicontrol_actionsForTarget", 3);

	public function allTargets():UIView
	{
		return cpp_uicontrol_allTargets(_tag);
	}
	private static var cpp_uicontrol_allTargets = Lib.load("basis", "uicontrol_allTargets", 1);
	public var selected(getSelected, setSelected) : Bool;
	private function setSelected(value:Bool):Bool
	{
		cpp_uicontrol_setSelected(_tag, value);
		return cpp_uicontrol_getSelected(_tag);
	}
	private static var cpp_uicontrol_setSelected = Lib.load("basis", "uicontrol_setSelected", 2);
	private function getSelected():Bool
	{
		return cpp_uicontrol_getSelected(_tag);
	}
	private static var cpp_uicontrol_getSelected = Lib.load("basis", "uicontrol_getSelected", 1);
	public var contentHorizontalAlignment(getContentHorizontalAlignment, setContentHorizontalAlignment) : Int;
	private function setContentHorizontalAlignment(value:Int):Int
	{
		cpp_uicontrol_setContentHorizontalAlignment(_tag, value);
		return cpp_uicontrol_getContentHorizontalAlignment(_tag);
	}
	private static var cpp_uicontrol_setContentHorizontalAlignment = Lib.load("basis", "uicontrol_setContentHorizontalAlignment", 2);
	private function getContentHorizontalAlignment():Int
	{
		return cpp_uicontrol_getContentHorizontalAlignment(_tag);
	}
	private static var cpp_uicontrol_getContentHorizontalAlignment = Lib.load("basis", "uicontrol_getContentHorizontalAlignment", 1);
	public var contentVerticalAlignment(getContentVerticalAlignment, setContentVerticalAlignment) : Int;
	private function setContentVerticalAlignment(value:Int):Int
	{
		cpp_uicontrol_setContentVerticalAlignment(_tag, value);
		return cpp_uicontrol_getContentVerticalAlignment(_tag);
	}
	private static var cpp_uicontrol_setContentVerticalAlignment = Lib.load("basis", "uicontrol_setContentVerticalAlignment", 2);
	private function getContentVerticalAlignment():Int
	{
		return cpp_uicontrol_getContentVerticalAlignment(_tag);
	}
	private static var cpp_uicontrol_getContentVerticalAlignment = Lib.load("basis", "uicontrol_getContentVerticalAlignment", 1);
	public var highlighted(getHighlighted, setHighlighted) : Bool;
	private function setHighlighted(value:Bool):Bool
	{
		cpp_uicontrol_setHighlighted(_tag, value);
		return cpp_uicontrol_getHighlighted(_tag);
	}
	private static var cpp_uicontrol_setHighlighted = Lib.load("basis", "uicontrol_setHighlighted", 2);
	private function getHighlighted():Bool
	{
		return cpp_uicontrol_getHighlighted(_tag);
	}
	private static var cpp_uicontrol_getHighlighted = Lib.load("basis", "uicontrol_getHighlighted", 1);

	public function cancelTrackingWithEvent(arg1:UIView):Void
	{
		cpp_uicontrol_cancelTrackingWithEvent(_tag, arg1.tag);
	}
	private static var cpp_uicontrol_cancelTrackingWithEvent = Lib.load("basis", "uicontrol_cancelTrackingWithEvent", 2);

	public function endTrackingWithTouch(arg1:UIView, arg2:UIView):Void
	{
		cpp_uicontrol_endTrackingWithTouch(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uicontrol_endTrackingWithTouch = Lib.load("basis", "uicontrol_endTrackingWithTouch", 3);

	public function continueTrackingWithTouch(arg1:UIView, arg2:UIView):Bool
	{
		return cpp_uicontrol_continueTrackingWithTouch(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uicontrol_continueTrackingWithTouch = Lib.load("basis", "uicontrol_continueTrackingWithTouch", 3);

	public function beginTrackingWithTouch(arg1:UIView, arg2:UIView):Bool
	{
		return cpp_uicontrol_beginTrackingWithTouch(_tag, arg1.tag, arg2.tag);
	}
	private static var cpp_uicontrol_beginTrackingWithTouch = Lib.load("basis", "uicontrol_beginTrackingWithTouch", 3);
	public var touchInside(getTouchInside, null) : Bool;
		private function getTouchInside():Bool
	{
		return cpp_uicontrol_getTouchInside(_tag);
	}
	private static var cpp_uicontrol_getTouchInside = Lib.load("basis", "uicontrol_getTouchInside", 1);
	public var state(getState, null) : Int;
		private function getState():Int
	{
		return cpp_uicontrol_getState(_tag);
	}
	private static var cpp_uicontrol_getState = Lib.load("basis", "uicontrol_getState", 1);
	public var tracking(getTracking, null) : Bool;
		private function getTracking():Bool
	{
		return cpp_uicontrol_getTracking(_tag);
	}
	private static var cpp_uicontrol_getTracking = Lib.load("basis", "uicontrol_getTracking", 1);

	public function setTracking(arg1:Bool):Void
	{
		cpp_uicontrol_setTracking(_tag, arg1);
	}
	private static var cpp_uicontrol_setTracking = Lib.load("basis", "uicontrol_setTracking", 2);

	public function removeTarget(arg1:UIView, arg2:Int):Void
	{
		cpp_uicontrol_removeTarget(_tag, arg1.tag, arg2);
	}
	private static var cpp_uicontrol_removeTarget = Lib.load("basis", "uicontrol_removeTarget", 3);

	public function hasOneOrMoreTargets():Bool
	{
		return cpp_uicontrol_hasOneOrMoreTargets(_tag);
	}
	private static var cpp_uicontrol_hasOneOrMoreTargets = Lib.load("basis", "uicontrol_hasOneOrMoreTargets", 1);

	public function requiresDisplayOnTracking():Bool
	{
		return cpp_uicontrol_requiresDisplayOnTracking(_tag);
	}
	private static var cpp_uicontrol_requiresDisplayOnTracking = Lib.load("basis", "uicontrol_requiresDisplayOnTracking", 1);

	public function setRequiresDisplayOnTracking(arg1:Bool):Void
	{
		cpp_uicontrol_setRequiresDisplayOnTracking(_tag, arg1);
	}
	private static var cpp_uicontrol_setRequiresDisplayOnTracking = Lib.load("basis", "uicontrol_setRequiresDisplayOnTracking", 2);

	public function touchDragged():Bool
	{
		return cpp_uicontrol_touchDragged(_tag);
	}
	private static var cpp_uicontrol_touchDragged = Lib.load("basis", "uicontrol_touchDragged", 1);

	public function shouldTrack():Bool
	{
		return cpp_uicontrol_shouldTrack(_tag);
	}
	private static var cpp_uicontrol_shouldTrack = Lib.load("basis", "uicontrol_shouldTrack", 1);

	public function mouseInside():Bool
	{
		return cpp_uicontrol_mouseInside(_tag);
	}
	private static var cpp_uicontrol_mouseInside = Lib.load("basis", "uicontrol_mouseInside", 1);

}
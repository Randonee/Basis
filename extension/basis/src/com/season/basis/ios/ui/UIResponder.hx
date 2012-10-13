package com.season.basis.ios.ui;

import cpp.Lib;
import com.season.basis.ios.ViewManager;
import com.season.basis.ios.ViewBase;

class UIResponder extends ViewBase
{
	public function new(?type:Int = 7)
	{
		super(type);
	}
	
	

	public function firstResponder():UIView
	{
		return cpp_uiresponder_firstResponder(_tag);
	}
	private static var cpp_uiresponder_firstResponder = Lib.load("basis", "uiresponder_firstResponder", 1);

	public function isFirstResponder():Bool
	{
		return cpp_uiresponder_isFirstResponder(_tag);
	}
	private static var cpp_uiresponder_isFirstResponder = Lib.load("basis", "uiresponder_isFirstResponder", 1);

	public function becomeFirstResponder():Bool
	{
		return cpp_uiresponder_becomeFirstResponder(_tag);
	}
	private static var cpp_uiresponder_becomeFirstResponder = Lib.load("basis", "uiresponder_becomeFirstResponder", 1);

	public function remoteControlReceivedWithEvent(arg1:UIView):Void
	{
		cpp_uiresponder_remoteControlReceivedWithEvent(_tag, arg1.tag);
	}
	private static var cpp_uiresponder_remoteControlReceivedWithEvent = Lib.load("basis", "uiresponder_remoteControlReceivedWithEvent", 2);

	public function motionCancelled(arg1:Int, arg2:UIView):Void
	{
		cpp_uiresponder_motionCancelled(_tag, arg1, arg2.tag);
	}
	private static var cpp_uiresponder_motionCancelled = Lib.load("basis", "uiresponder_motionCancelled", 3);

	public function motionEnded(arg1:Int, arg2:UIView):Void
	{
		cpp_uiresponder_motionEnded(_tag, arg1, arg2.tag);
	}
	private static var cpp_uiresponder_motionEnded = Lib.load("basis", "uiresponder_motionEnded", 3);

	public function motionBegan(arg1:Int, arg2:UIView):Void
	{
		cpp_uiresponder_motionBegan(_tag, arg1, arg2.tag);
	}
	private static var cpp_uiresponder_motionBegan = Lib.load("basis", "uiresponder_motionBegan", 3);

	public function reloadInputViewsWithoutReset():Void
	{
		cpp_uiresponder_reloadInputViewsWithoutReset(_tag);
	}
	private static var cpp_uiresponder_reloadInputViewsWithoutReset = Lib.load("basis", "uiresponder_reloadInputViewsWithoutReset", 1);

	public function reloadInputViews():Void
	{
		cpp_uiresponder_reloadInputViews(_tag);
	}
	private static var cpp_uiresponder_reloadInputViews = Lib.load("basis", "uiresponder_reloadInputViews", 1);

	public function nextFirstResponder():UIView
	{
		return cpp_uiresponder_nextFirstResponder(_tag);
	}
	private static var cpp_uiresponder_nextFirstResponder = Lib.load("basis", "uiresponder_nextFirstResponder", 1);

	public function defaultFirstResponder():UIView
	{
		return cpp_uiresponder_defaultFirstResponder(_tag);
	}
	private static var cpp_uiresponder_defaultFirstResponder = Lib.load("basis", "uiresponder_defaultFirstResponder", 1);

}
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
	
	

	public function becomeFirstResponder():Bool
	{
		return cpp_uiresponder_becomeFirstResponder(_tag);
	}
	private static var cpp_uiresponder_becomeFirstResponder = Lib.load("basis", "uiresponder_becomeFirstResponder", 1);

	public function canBecomeFirstResponder():Bool
	{
		return cpp_uiresponder_canBecomeFirstResponder(_tag);
	}
	private static var cpp_uiresponder_canBecomeFirstResponder = Lib.load("basis", "uiresponder_canBecomeFirstResponder", 1);

	public function canResignFirstResponder():Bool
	{
		return cpp_uiresponder_canResignFirstResponder(_tag);
	}
	private static var cpp_uiresponder_canResignFirstResponder = Lib.load("basis", "uiresponder_canResignFirstResponder", 1);

	public function isFirstResponder():Bool
	{
		return cpp_uiresponder_isFirstResponder(_tag);
	}
	private static var cpp_uiresponder_isFirstResponder = Lib.load("basis", "uiresponder_isFirstResponder", 1);

	public function reloadInputViews():Void
	{
		cpp_uiresponder_reloadInputViews(_tag);
	}
	private static var cpp_uiresponder_reloadInputViews = Lib.load("basis", "uiresponder_reloadInputViews", 1);

	public function resignFirstResponder():Bool
	{
		return cpp_uiresponder_resignFirstResponder(_tag);
	}
	private static var cpp_uiresponder_resignFirstResponder = Lib.load("basis", "uiresponder_resignFirstResponder", 1);

}
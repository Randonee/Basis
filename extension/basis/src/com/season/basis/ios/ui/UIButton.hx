package com.season.basis.ios.ui;

import cpp.Lib;

import com.season.basis.ios.ViewManager;

class UIButton extends UIControl
{
	public function new()
	{
		super(3);
	}
	
	public function setLabel(text:String):Void
	{
		cpp_button_setLabel(_tag, text);
	}
	
	public function setImageForState(assetName:String):Void
	{
		cpp_button_setImageForState(_tag, assetName);
	}
	
	private static var cpp_button_setLabel = Lib.load ("basis", "button_setLabel", 2);
	private static var cpp_button_setImageForState = Lib.load ("basis", "button_setImageForState", 2);
}
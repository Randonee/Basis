package com.season.basis.ios.ui;

import cpp.Lib;

class UITextField extends UIControl
{
	public function new()
	{
		super(4);
	}
	
	public var text(getText, setText) : String;
	private function setText( value : String ):String
	{
		cpp_textField_setText(_tag, value);
		return cpp_textField_getText(_tag);
	}
	
	private function getText():String 
	{
		return cpp_textField_getText(_tag);
	}
	
	private static var cpp_textField_setText = Lib.load ("viewmanager", "textField_setText", 2);
	private static var cpp_textField_getText = Lib.load ("viewmanager", "textField_getText", 1);
}
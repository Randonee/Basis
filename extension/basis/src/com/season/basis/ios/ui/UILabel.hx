package com.season.basis.ios.ui;

import cpp.Lib;

class UILabel extends UIView
{
	public function new()
	{
		super (1);
	}
	
	public var text(getText, setText) : String;
	private function setText( value : String ):String
	{
		cpp_label_setText(_tag, value);
		return cpp_label_getText(_tag);
	}
	private function getText():String
	{
		return cpp_label_getText(_tag);
	}
	
	private static var cpp_label_setText = Lib.load ("basis", "label_setText", 2);
	private static var cpp_label_getText = Lib.load ("basis", "label_getText", 1);
}
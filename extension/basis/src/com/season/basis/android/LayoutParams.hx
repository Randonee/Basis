package com.season.basis.android;

@:native("android.view.ViewGroup.LayoutParams")
extern class LayoutParams
{
	public function new(width:Int, height:Int):Void;
	public var width:Int;
	public var height:Int;
}
package com.season.basis.android;

@:native("android.view.ViewGroup.LayoutParams")
extern class ViewGroupLayoutParams
{
	static inline var MATCH_PARENT:Int = -1;
	static inline var FILL_PARENT:Int = -1;
	static inline var WRAP_CONTENT:Int = -2;

	public function new(width:Int, height:Int):Void;
	public var width:Int;
	public var height:Int;
}
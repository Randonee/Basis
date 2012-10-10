package com.season.basis.android;

@:native("android.view.ViewGroup.MarginLayoutParams")
extern class MarginLayoutParams extends ViewGroupLayoutParams
{
	public function setMargins(left:Int, top:Int, right:Int, bottom:Int):Void;
}
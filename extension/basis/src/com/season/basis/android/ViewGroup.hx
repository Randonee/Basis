package com.season.basis.android;

@:native("android.view")
extern class ViewGroup extends View
{
	public function addView(child:View):Void;
	public function getChildCount():Int;
}
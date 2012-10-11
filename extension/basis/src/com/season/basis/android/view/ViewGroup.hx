package com.season.basis.android.view;

@:native("android.view.ViewGroup")
extern class ViewGroup extends View
{
	public function addView(child:View):Void;
	public function getChildCount():Int;
}
package com.season.basis.android;

@:native("android.view.ViewManager")
extern class ViewManager
{
	public function addView(view:View, params:LayoutParams):Void;
	public function removeView(view:View):Void;
	public function updateViewLayout(view:View, params:LayoutParams):Void;
}
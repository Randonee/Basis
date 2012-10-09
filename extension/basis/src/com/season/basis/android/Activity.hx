package com.season.basis.android;

@:native("android.app.Activity")
extern class Activity extends ContextThemeWrapper
{
	public function new():Void;
	public function addContentView(view:View, params:LayoutParams):Void;
	public function getCurrentFocus():View;
	public function setContentView(view:View):Void;
}
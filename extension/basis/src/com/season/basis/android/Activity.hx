package com.season.basis.android;

@:native("android.app.Activity")
extern class Activity extends ContextThemeWrapper
{
	public function new():Void;
	public function addContentView(view:View, params:ViewGroupLayoutParams):Void;
	public function getCurrentFocus():View;
	public function setContentView(view:Dynamic):Void;
	public function findViewById(id:Int):View;
}
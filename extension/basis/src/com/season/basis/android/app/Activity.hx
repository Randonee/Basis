package com.season.basis.android.app;

import com.season.basis.android.view.View;
import com.season.basis.android.view.ViewGroupLayoutParams;
import com.season.basis.android.content.ContextThemeWrapper;

@:native("android.app.Activity")
extern class Activity extends ContextThemeWrapper
{
	public function new():Void;
	public function addContentView(view:View, params:ViewGroupLayoutParams):Void;
	public function getCurrentFocus():View;
	public function setContentView(view:Dynamic):Void;
	public function findViewById(id:Int):View;
}
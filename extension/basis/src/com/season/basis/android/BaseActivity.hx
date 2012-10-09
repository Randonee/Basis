package com.season.basis.android;

@:native("org.haxe.nme.BaseActivity")
extern class BaseActivity extends Activity
{
	static public function getInstance():BaseActivity;
	static public function getContext():Context;
}
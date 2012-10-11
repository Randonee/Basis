package com.season.basis.android.util;

@:native("android.util.Log")
extern class Log
{
	static public function w(tag:String, msg:String):Int;
}
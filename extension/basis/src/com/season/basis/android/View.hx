package com.season.basis.android;

@:native("android.view.View")
extern class View
{
	public function setId(id:Int):Void;
	public function new(context:Context):Void;
	
	public function layout(l:Int, t:Int, r:Int, b:Int):Void;
	public function forceLayout():Void;
	public function getHeight():Int;
	public function getWidth():Int;
	public function getLeft():Int;
	public function getTop():Int;
	
	private function onLayout(changed:Bool, left:Int, top:Int, right:Int, bottom:Int):Void;
	public function setLayoutParams(params:ViewGroupLayoutParams):Void;
}
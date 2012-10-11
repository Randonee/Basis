package com.season.basis.android.view;

import com.season.basis.android.content.Context;

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
	
	public function findViewById(id:Int):View;
	
	
	//Events
	public function setOnClickListener(l:OnClickListener):Void;
	public function setOnKeyListener(l:OnKeyListener):Bool;
}

@:native("android.view.View.OnClickListener")
extern interface OnClickListener{public function onClick(v:View):Void;}

@:native("android.view.View.OnKeyListener")
extern interface OnKeyListener{public function onKey(v:View, keyCode:Int, event:KeyEvent):Bool;}

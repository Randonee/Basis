package com.season.basis;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#else
import nme.Lib;
#end

class ViewManager {	

	private static var _locUpdateCB:Dynamic;

	public static function createView(type:Int):Int
	{
		#if cpp
			return cpp_call_create_view(type);
		#end	
	}
	
	public static function addToRootView(view:BasisView):Void
	{
		#if cpp
			cpp_call_add_to_root_view(view.tag);
		#end	
	}
	
	public static function addEventListener(type:String, tag:Int, handler:Int->String->Void):Void
	{
		#if cpp
			cpp_call_add_event_listener(type, tag, handler);
		#end	
	}
	
	#if cpp
	private static var cpp_call_create_view = Lib.load ("basis", "viewmanager_createView", 1);
	private static var cpp_call_add_to_root_view = Lib.load ("basis", "viewmanager_addToRootView", 1);
	private static var cpp_call_add_event_listener = Lib.load ("basis", "viewmanager_addEventListener", 3);
	#end
	
}
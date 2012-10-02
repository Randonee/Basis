package com.season.basis;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#else
import nme.Lib;
#end

class ViewManager
{	
	static private var _eventManager:EventManager;
	
	
	public static function createView(type:Int, view:BasisView):Int
	{
		#if cpp
			var tag:Int = cpp_call_create_view(type);
			return tag;
		#end	
	}
	
	public static function addToRootView(view:BasisView):Void
	{
		#if cpp
			cpp_call_add_to_root_view(view.tag);
		#end	
	}
	
	public static function addEventListener(type:String, view:BasisView, handler:BasisView->String->Void):Void
	{
		getEventManager().addEventListener(type, view, handler);
	}
	
	public static function removeEventListener(type:String, view:BasisView, handler:BasisView->String->Void):Void
	{
		getEventManager().removeEventListener(type, view, handler);
	}
	
	private static function getEventManager():EventManager
	{
		if(_eventManager == null)
		{
			_eventManager = new EventManager();
			#if cpp
				cpp_call_set_event_handler(_eventManager.handleEvent);
			#end
		}
		return _eventManager;
	}
	
	#if cpp
	private static var cpp_call_create_view = Lib.load ("basis", "viewmanager_createView", 1);
	private static var cpp_call_add_to_root_view = Lib.load ("basis", "viewmanager_addToRootView", 1);
	private static var cpp_call_set_event_handler = Lib.load ("basis", "viewmanager_setEventHandler", 1);
	#end
	
}
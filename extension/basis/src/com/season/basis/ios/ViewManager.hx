package com.season.basis.ios;

import cpp.Lib;

import com.season.basis.ios.ui.UIView;

class ViewManager
{	
	static private var _eventManager:EventManager;
	
	
	/**
	* Creates a new view
	*
	* @param type the type of view to be added
	**/
	public static function createView(type:Int):Int
	{
		return cpp_call_create_view(type);
	}
	
	/**
	* Adds a view to the base window of the aplication
	*
	* @param view the view to be added
	**/
	public static function addToRootView(view:UIView):Void
	{
		cpp_call_add_to_root_view(view.tag);
	}
	
	/**
	* Adds an event listener
	*
	* @param type event type
	* @param view the view that will be dispatching the event
	* @param handler the function that will be called when the event occurs
	**/
	public static function addEventListener(type:String, view:UIView, handler:UIView->String->Void):Void
	{
		getEventManager().addEventListener(type, view, handler);
	}
	
	/**
	* removes an event listener
	*
	* @param type event type
	* @param view the view that will be dispatching the event
	* @param handler the function that will be called when the event occurs
	**/
	public static function removeEventListener(type:String, view:UIView, handler:UIView->String->Void):Void
	{
		getEventManager().removeEventListener(type, view, handler);
	}
	
	/**
	* Gets the event manager instance
	*
	* @returns eventManager instance
	**/
	private static function getEventManager():EventManager
	{
		if(_eventManager == null)
		{
			_eventManager = new EventManager();
			cpp_call_set_event_handler(_eventManager.handleEvent);
		}
		return _eventManager;
	}
	
	#if ios
	private static var cpp_call_create_view = Lib.load ("basis", "viewmanager_createView", 1);
	private static var cpp_call_add_to_root_view = Lib.load ("basis", "viewmanager_addToRootView", 1);
	private static var cpp_call_set_event_handler = Lib.load ("basis", "viewmanager_setEventHandler", 1);
	#end
	
}
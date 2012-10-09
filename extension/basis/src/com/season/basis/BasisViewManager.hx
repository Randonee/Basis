package com.season.basis;

#if ios
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

#if android
import com.season.basis.android.BaseActivity;
#end

class BasisViewManager
{	
	static private var _eventManager:EventManager;
	
	
	/**
	* Creates a new view
	*
	* @param type the type of view to be added
	**/
	public static function createView(type:Int):Int
	{
		#if ios
			return cpp_call_create_view(type);
		#end
		
		#if android
			return 0;
		#end
	}
	
	/**
	* Adds a view to the base window of the aplication
	*
	* @param view the view to be added
	**/
	public static function addToRootView(view:BasisView):Void
	{
		#if ios
			cpp_call_add_to_root_view(view.tag);
		#elseif android
			BaseActivity.getInstance().setContentView(view.nativeView);
		#end
		
	}
	
	/**
	* Adds an event listener
	*
	* @param type event type
	* @param view the view that will be dispatching the event
	* @param handler the function that will be called when the event occurs
	**/
	public static function addEventListener(type:String, view:BasisView, handler:BasisView->String->Void):Void
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
	public static function removeEventListener(type:String, view:BasisView, handler:BasisView->String->Void):Void
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
			#if ios
				cpp_call_set_event_handler(_eventManager.handleEvent);
			#end
		}
		return _eventManager;
	}
	
	#if ios
	private static var cpp_call_create_view = Lib.load ("basis", "viewmanager_createView", 1);
	private static var cpp_call_add_to_root_view = Lib.load ("basis", "viewmanager_addToRootView", 1);
	private static var cpp_call_set_event_handler = Lib.load ("basis", "viewmanager_setEventHandler", 1);
	#end
	
}
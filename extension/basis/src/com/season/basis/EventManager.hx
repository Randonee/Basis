package com.season.basis;

typedef BasisEventListener =
{
	view : BasisView, 
	handler : BasisView->String->Void 
}


class EventManager
{	
	private var _eventListeners:Hash<Hash<Array<BasisEventListener>>>;
	
	public function new()
	{
		_eventListeners = new Hash<Hash<Array<BasisEventListener>>>();
	}
	
	/**
	* Adds an event listener
	**/
	public function addEventListener(type:String, view:BasisView, handler:BasisView->String->Void):Void
	{
		removeEventListener(type, view, handler);
		
		var key:String = Std.string(view.tag);
		var objectListeners:Hash<Array<BasisEventListener>> = _eventListeners.get(key);
		
		if(objectListeners == null)
		{
			objectListeners = new Hash<Array<BasisEventListener>>();
			_eventListeners.set(key, objectListeners);
		}
		
		var typeListeners:Array<BasisEventListener> = objectListeners.get(type);
		
		if(typeListeners == null)
		{
			typeListeners = [];
			objectListeners.set(type, typeListeners);
		}
		typeListeners.push({view:view, handler:handler});
	}
	
	/**
	* Removes an event listener
	**/
	public function removeEventListener(type:String, view:BasisView, handler:BasisView->String->Void):Void
	{
		var key:String = Std.string(view.tag);
		var objectListeners:Hash<Array<BasisEventListener>> = _eventListeners.get(key);
		
		if(objectListeners == null)
			return;
		
		var typeListeners:Array<BasisEventListener> = objectListeners.get(type);
		
		if(typeListeners == null)
			return;
			
		for(a in 0...typeListeners.length)
		{
			if(typeListeners[a].handler == handler)
			{
				typeListeners.remove(typeListeners[a]);
				return;
			}
		}
	}
	
	/**
	* Handles an event
	**/
	public function handleEvent(type:String, tag:Int):Void
	{
		var objectListeners:Hash<Array<BasisEventListener>> = _eventListeners.get(Std.string(tag));
		
		if(objectListeners != null)
		{
			var typeListeners:Array<BasisEventListener> = objectListeners.get(type);
			
			if(typeListeners != null)
			{
				for(a in 0...typeListeners.length)
					typeListeners[a].handler(typeListeners[a].view, type);
			}
		}
		
	}
	
}
#import "EventManager.h"



typedef struct EventHandler
{
	const char *type;
	int viewTag;
	AutoGCRoot *callback;
	
}EventHandler;

@implementation EventManager

NSMutableDictionary *eventListeners;

-(id)init
{
	if (self = [super init])
	{
		eventListeners = [[NSMutableDictionary alloc] init];
	}
 	return self;
 }

-(void) removeAllEventListenersForView:(int) viewTag
{
	for (NSString* key in eventListeners)
	{
		NSMutableDictionary *handlersByType = [eventListeners objectForKey:key];
    	[handlersByType removeObjectForKey:[NSNumber numberWithInt:viewTag]];
	}
}


-(void) addEventListener:(const char *) type :(int) viewTag :(AutoGCRoot *)callback
{
	[self removeEventListener:type :viewTag :callback];

	NSMutableDictionary *handlersByType = [eventListeners objectForKey:[NSString stringWithUTF8String:type]];
    NSMutableArray *handlersByTag;
    
    if(handlersByType == nil)
    {
        handlersByType = [[NSMutableDictionary alloc] init];
        [eventListeners setObject:handlersByType forKey:[NSString stringWithUTF8String:type]];
    }
    
    handlersByTag = [handlersByType objectForKey:[NSNumber numberWithInt:viewTag]];
    
    if(handlersByTag == nil)
    {
        handlersByTag = [[NSMutableArray alloc] init];
        [handlersByType setObject:handlersByTag forKey:[NSNumber numberWithInt:viewTag]];
    }
    
    EventHandler handler = {type, viewTag, callback};
    [handlersByTag addObject:[NSValue value:&handler withObjCType:@encode(EventHandler)]];
}

-(void) removeEventListener:(const char *) type :(int) viewTag :(AutoGCRoot *)callback
{
	NSMutableDictionary *handlersByType = [eventListeners objectForKey:[NSString stringWithUTF8String:type]];
    
    if(handlersByType != nil)
    {
    	NSMutableArray *handlersByTag = [handlersByType objectForKey:[NSNumber numberWithInt:viewTag]];
    
	    if(handlersByTag != nil)
	    {
	    	for(int a = 0; a < handlersByTag.count; ++a)
	    	{
	    		EventHandler *handler = NULL;
	    		NSValue *value = [handlersByTag objectAtIndex:a];
	    		[value getValue:handler];
	    		
	    		if(handler->viewTag == viewTag)
	    		{
	    			[handlersByTag  removeObjectAtIndex:a];
	    			return;
	    		}
	    	}
	    }
    }
}

-(void) callHanlders:(int) viewTag :(char*) type
{
	NSMutableDictionary *handlersByType = [eventListeners objectForKey:[NSString stringWithUTF8String:type]];
    
    if(handlersByType != nil)
    {
    	NSMutableArray *handlersByTag = [handlersByType objectForKey:[NSNumber numberWithInt:viewTag]];
    
	    if(handlersByTag != nil)
	    {
	    	for(int a = 0; a < handlersByTag.count; ++a)
	    	{
	    		EventHandler handler;
	    		NSValue *value = [handlersByTag objectAtIndex:a];
	    		[value getValue:&handler];
	    		val_call2(handler.callback->get(), alloc_int(viewTag), alloc_string(type));
	    	}
	    }
    }
}


//Events
-(void) onUIControlEventTouchDown:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_TOUCH_DOWN"];}
-(void) onUIControlEventTouchDownRepeat:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_TOUCH_DOWN_REPEAT"];}
-(void) onUIControlEventTouchDragInside:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_TOUCH_DRAG_INSIDE"];}
-(void) onUIControlEventTouchDragOutside:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_TOUCH_DRAG_OUTSIDE"];}
-(void) onUIControlEventTouchDragEnter:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_TOUCH_DRAG_ENTER"];}
-(void) onUIControlEventTouchDragExit:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_TOUCH_DRAG_EXIT"];}
-(void) onUIControlEventTouchUpInside:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_TOUCH_UP_INSIDE"];}
-(void) onUIControlEventTouchUpOutside:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_TOUCH_UP_OUTSIDE"];}
-(void) onUIControlEventTouchCancel:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_TOUCH_CANCEL"];}
-(void) onUIControlEventValueChanged:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_VALUE_CHANGED"];}
-(void) onUIControlEventEditingDidBegin:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_EDITING_DID_BEGIN"];}
-(void) onUIControlEventEditingChanged:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_EDITING_CHANGED"];}
-(void) onUIControlEventEditingDidEnd:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_EDITING_DID_END"];}
-(void) onUIControlEventEditingDidEndOnExit:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_EDITING_DID_END_ON_EXIT"];}
-(void) onUIControlEventAllTouchEvents:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_ALL_TOUCH_EVENTS"];}
-(void) onUIControlEventAllEditingEvents:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_ALL_EDITING_EVENTS"];}
-(void) onUIControlEventApplicationReserved:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_APPLICATION_RESERVED"];}
-(void) onUIControlEventSystemReserved:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_SYSTEMR_ESERVED"];}
-(void) onUIControlEventAllEvents:(id) view :(id) event{[self callHanlders:[view tag] :"CONTROL_ALL_EVENTS"];}




//Notifications
-(void) onUITextFieldTextDidBeginEditingNotification:(NSNotification *) notification{[self callHanlders:[[notification object] tag] :"TextFieldTextDidBeginEditing"];}
-(void) onUITextFieldTextDidChangeNotification:(NSNotification *) notification{[self callHanlders:[[notification object] tag] :"TextFieldTextDidChange"];}
-(void) onUITextFieldTextDidEndEditingNotification:(NSNotification *) notification {[self callHanlders:[[notification object] tag] :"TextFieldTextDidEndEditing"];}

@end

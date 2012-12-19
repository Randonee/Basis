#import "EventManager.h"


@implementation EventManager

AutoGCRoot *eventHandler;

-(void) setEventHandler:(AutoGCRoot *) handler
{
	eventHandler = handler;
}

-(void) callHanlders:(int) viewTag :(const char*) type
{
	val_call2(eventHandler->get(), alloc_string(type), alloc_int(viewTag));
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

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#include <hx/CFFI.h>

@interface EventManager : NSObject

-(void) setEventHandler:(AutoGCRoot *) handler;

-(void) onUIControlEventTouchDown:(id) view :(id) event;
-(void) onUIControlEventTouchDownRepeat:(id) view :(id) event;
-(void) onUIControlEventTouchDragInside:(id) view :(id) event;
-(void) onUIControlEventTouchDragOutside:(id) view :(id) event;
-(void) onUIControlEventTouchDragEnter:(id) view :(id) event;
-(void) onUIControlEventTouchDragExit:(id) view :(id) event;
-(void) onUIControlEventTouchUpInside:(id) view :(id) event;
-(void) onUIControlEventTouchUpOutside:(id) view :(id) event;
-(void) onUIControlEventTouchCancel:(id) view :(id) event;
-(void) onUIControlEventValueChanged:(id) view :(id) event;
-(void) onUIControlEventEditingDidBegin:(id) view :(id) event;
-(void) onUIControlEventEditingChanged:(id) view :(id) event;
-(void) onUIControlEventEditingDidEnd:(id) view :(id) event;
-(void) onUIControlEventEditingDidEndOnExit:(id) view :(id) event;
-(void) onUIControlEventAllTouchEvents:(id) view :(id) event;
-(void) onUIControlEventAllEditingEvents:(id) view :(id) event;
-(void) onUIControlEventApplicationReserved:(id) view :(id) event;
-(void) onUIControlEventSystemReserved:(id) view :(id) event;
-(void) onUIControlEventAllEvents:(id) view :(id) event;


@end

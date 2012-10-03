#import "ViewManager.h"
#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import <Foundation/Foundation.h>
#import "EventManager.h"

namespace basis
{
    UIView* createViewOfType(int type);
    
    static NSMutableDictionary *views;
    static UIWindow *appWindow;
    static int currentTag;
    static EventManager *eventManager;
    
    void viewManager_doesNothing(){}
    
    void initViewManager()
    {
    	currentTag = 2;
        views = [[NSMutableDictionary alloc] init];
        appWindow = [[UIApplication sharedApplication] keyWindow];
        appWindow.tag = 1;
        eventManager = [[EventManager alloc] init];
        [views setObject:appWindow forKey:[NSNumber numberWithInt:1]];
    }
    
    value viewmanager_createView(value type)
    {
    	if(views == nil)
    		initViewManager();
    
        UIView *view = createViewOfType(val_int(type));
        return alloc_int(view.tag);
    }
    DEFINE_PRIM (viewmanager_createView, 1);
    
    void viewmanager_setEventHandler(value handler)
    {
    	[eventManager setEventHandler:new AutoGCRoot(handler)];
    }
    DEFINE_PRIM (viewmanager_setEventHandler, 1);
    
    
	void removeView(int tag)
	{
		UIView *view = [views objectForKey:[NSNumber numberWithInt:tag]];
		
		if(view != nil)
		{
			[views removeObjectForKey:[NSNumber numberWithInt:tag]];
		}
	}
    
    void viewmanager_addToRootView(value tag)
    {
    	UIView *childView = [views objectForKey:[NSNumber numberWithInt:val_int(tag)]];
    	[appWindow addSubview:childView];
    }
    DEFINE_PRIM (viewmanager_addToRootView, 1);
    
    UIView* createViewOfType(int type)
    {
        
        UIView *view;
        void (*initFunction)(int) = NULL;
        
        switch (type)
        {
            case 0:
                view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
                break;
                
                
            case 1:
                view = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
                break;
                
            case 2:
                view = [[UIControl alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
                break;
                
            case 3:
                view = [UIButton buttonWithType:UIButtonTypeRoundedRect];
                view.frame = CGRectMake(0,0, 200,200);
                initFunction = &buttonInitEventListeners;
                break;
                
            case 4:
                view = [[UITextField alloc] initWithFrame:CGRectMake(0, 0, 200, 30)];
                [(UITextField *)view setBorderStyle:UITextBorderStyleRoundedRect];
                initFunction = &textFieldInitEventListeners;
                break;
                
            case 5:
                view = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
                break;
                
           	case 6:
                view = [[MKMapView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
                break;
                
            default:
                view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
                break;
        }
        
        view.tag = currentTag;
        ++currentTag;
        
        [views setObject:view forKey:[NSNumber numberWithInt:view.tag]];
        
        if(initFunction != NULL)
       		initFunction(view.tag);
        
        return view;
    }
    
    
    #include "Util.mm";
    #include "UIViewExtern.mm";
    #include "UIControlExtern.mm";
    #include "UILabelExtern.mm";
    #include "UIButtonExtern.mm";
    #include "UITextFieldExtern.mm";
    #include "UIImageViewExtern.mm";
}

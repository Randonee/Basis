#ifndef ViewManager
#define ViewManager

#include <hx/CFFI.h>


namespace basis
{
    value createView(value type);
	void addToRootView(value tag);
	void initViewManager();
	void addEventListener(const char *type, int viewTag, AutoGCRoot *callback);
	void removeEventListener(const char *type, int viewTag, AutoGCRoot *callback);
	void removeAllEventListenersForView(int viewTag);
	void removeView(int tag);
    void viewManager_doesNothing();
    
    #include "Util.h";
    #include "UIViewExtern.h";
    #include "UIControlExtern.h";
    #include "UILabelExtern.h";
    #include "UIButtonExtern.h";
    #include "UITextFieldExtern.h";
    #include "UIImageViewExtern.h";
}
#endif
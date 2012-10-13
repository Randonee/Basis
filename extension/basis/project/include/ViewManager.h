#ifndef ViewManager
#define ViewManager

#include <hx/CFFI.h>


namespace basis
{
    value createView(value type);
	void addToRootView(value tag);
	void initViewManager();
	void removeView(int tag);
    void viewManager_doesNothing();
    
    #include "Util.h";
    #include "Extern.h";
}
#endif
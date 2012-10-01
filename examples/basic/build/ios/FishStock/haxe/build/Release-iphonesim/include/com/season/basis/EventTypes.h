#ifndef INCLUDED_com_season_basis_EventTypes
#define INCLUDED_com_season_basis_EventTypes

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS3(com,season,basis,EventTypes)
namespace com{
namespace season{
namespace basis{


class EventTypes_obj : public hx::Object{
	public:
		typedef hx::Object super;
		typedef EventTypes_obj OBJ_;
		EventTypes_obj();
		Void __construct();

	public:
		static hx::ObjectPtr< EventTypes_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		~EventTypes_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("EventTypes"); }

		static ::String CONTROL_TOUCH_DOWN; /* REM */ 
		static ::String CONTROL_TOUCH_DOWN_REPEAT; /* REM */ 
		static ::String CONTROL_TOUCH_DRAG_INSIDE; /* REM */ 
		static ::String CONTROL_TOUCH_DRAG_OUTSIDE; /* REM */ 
		static ::String CONTROL_TOUCH_DRAG_ENTER; /* REM */ 
		static ::String CONTROL_TOUCH_DRAG_EXIT; /* REM */ 
		static ::String CONTROL_TOUCH_UP_INSIDE; /* REM */ 
		static ::String CONTROL_TOUCH_UP_OUTSIDE; /* REM */ 
		static ::String CONTROL_TOUCH_CANCEL; /* REM */ 
		static ::String CONTROL_VALUE_CHANGED; /* REM */ 
		static ::String CONTROL_EDITING_DID_BEGIN; /* REM */ 
		static ::String CONTROL_EDITING_CHANGED; /* REM */ 
		static ::String CONTROL_EDITING_DID_END; /* REM */ 
		static ::String CONTROL_EDITING_DID_END_ON_EXIT; /* REM */ 
		static ::String CONTROL_ALL_TOUCH_EVENTS; /* REM */ 
		static ::String CONTROL_ALL_EDITING_EVENTS; /* REM */ 
		static ::String CONTROL_APPLICATION_RESERVED; /* REM */ 
		static ::String CONTROL_SYSTEMR_ESERVED; /* REM */ 
		static ::String CONTROL_ALL_EVENTS; /* REM */ 
};

} // end namespace com
} // end namespace season
} // end namespace basis

#endif /* INCLUDED_com_season_basis_EventTypes */ 

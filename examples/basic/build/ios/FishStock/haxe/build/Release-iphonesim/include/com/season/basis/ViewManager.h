#ifndef INCLUDED_com_season_basis_ViewManager
#define INCLUDED_com_season_basis_ViewManager

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS3(com,season,basis,BasisView)
HX_DECLARE_CLASS3(com,season,basis,ViewManager)
namespace com{
namespace season{
namespace basis{


class ViewManager_obj : public hx::Object{
	public:
		typedef hx::Object super;
		typedef ViewManager_obj OBJ_;
		ViewManager_obj();
		Void __construct();

	public:
		static hx::ObjectPtr< ViewManager_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		~ViewManager_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("ViewManager"); }

		static Dynamic _locUpdateCB; /* REM */ 
		static int createView( int type);
		static Dynamic createView_dyn();

		static Void addToRootView( ::com::season::basis::BasisView view);
		static Dynamic addToRootView_dyn();

		static Void addEventListener( ::String type,int tag,Dynamic handler);
		static Dynamic addEventListener_dyn();

		static Dynamic cpp_call_create_view; /* REM */ 
		static Dynamic &cpp_call_create_view_dyn() { return cpp_call_create_view;}
		static Dynamic cpp_call_add_to_root_view; /* REM */ 
		static Dynamic &cpp_call_add_to_root_view_dyn() { return cpp_call_add_to_root_view;}
		static Dynamic cpp_call_add_event_listener; /* REM */ 
		static Dynamic &cpp_call_add_event_listener_dyn() { return cpp_call_add_event_listener;}
};

} // end namespace com
} // end namespace season
} // end namespace basis

#endif /* INCLUDED_com_season_basis_ViewManager */ 

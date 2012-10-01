#ifndef INCLUDED_com_season_basis_BasisView
#define INCLUDED_com_season_basis_BasisView

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS3(com,season,basis,BasisView)
namespace com{
namespace season{
namespace basis{


class BasisView_obj : public hx::Object{
	public:
		typedef hx::Object super;
		typedef BasisView_obj OBJ_;
		BasisView_obj();
		Void __construct();

	public:
		static hx::ObjectPtr< BasisView_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		~BasisView_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("BasisView"); }

		virtual Void removeSubview( ::com::season::basis::BasisView view);
		Dynamic removeSubview_dyn();

		virtual Void addSubview( ::com::season::basis::BasisView view);
		Dynamic addSubview_dyn();

		virtual Void addEventListener( ::String type,Dynamic handler);
		Dynamic addEventListener_dyn();

		virtual Void init( );
		Dynamic init_dyn();

		int _tag; /* REM */ 
		virtual Float setHeight( Float value);
		Dynamic setHeight_dyn();

		virtual Float getHeight( );
		Dynamic getHeight_dyn();

		Float height; /* REM */ 
		virtual Float setWidth( Float value);
		Dynamic setWidth_dyn();

		virtual Float getWidth( );
		Dynamic getWidth_dyn();

		Float width; /* REM */ 
		virtual Float setY( Float value);
		Dynamic setY_dyn();

		virtual Float getY( );
		Dynamic getY_dyn();

		Float y; /* REM */ 
		virtual Float setX( Float value);
		Dynamic setX_dyn();

		virtual Float getX( );
		Dynamic getX_dyn();

		Float x; /* REM */ 
		virtual ::com::season::basis::BasisView getSuperView( );
		Dynamic getSuperView_dyn();

		::com::season::basis::BasisView superview; /* REM */ 
		virtual int getTag( );
		Dynamic getTag_dyn();

		virtual int setTag( int value);
		Dynamic setTag_dyn();

		int tag; /* REM */ 
		static int TYPE; /* REM */ 
		static Dynamic _locUpdateCB; /* REM */ 
		static Dynamic cpp_addSubview; /* REM */ 
		static Dynamic &cpp_addSubview_dyn() { return cpp_addSubview;}
		static Dynamic cpp_getSuperview; /* REM */ 
		static Dynamic &cpp_getSuperview_dyn() { return cpp_getSuperview;}
		static Dynamic cpp_removeSubview; /* REM */ 
		static Dynamic &cpp_removeSubview_dyn() { return cpp_removeSubview;}
		static Dynamic cpp_call_view_set_x; /* REM */ 
		static Dynamic &cpp_call_view_set_x_dyn() { return cpp_call_view_set_x;}
		static Dynamic cpp_call_view_get_x; /* REM */ 
		static Dynamic &cpp_call_view_get_x_dyn() { return cpp_call_view_get_x;}
		static Dynamic cpp_call_view_set_y; /* REM */ 
		static Dynamic &cpp_call_view_set_y_dyn() { return cpp_call_view_set_y;}
		static Dynamic cpp_call_view_get_y; /* REM */ 
		static Dynamic &cpp_call_view_get_y_dyn() { return cpp_call_view_get_y;}
		static Dynamic cpp_call_view_set_width; /* REM */ 
		static Dynamic &cpp_call_view_set_width_dyn() { return cpp_call_view_set_width;}
		static Dynamic cpp_call_view_get_width; /* REM */ 
		static Dynamic &cpp_call_view_get_width_dyn() { return cpp_call_view_get_width;}
		static Dynamic cpp_call_view_set_height; /* REM */ 
		static Dynamic &cpp_call_view_set_height_dyn() { return cpp_call_view_set_height;}
		static Dynamic cpp_call_view_get_height; /* REM */ 
		static Dynamic &cpp_call_view_get_height_dyn() { return cpp_call_view_get_height;}
};

} // end namespace com
} // end namespace season
} // end namespace basis

#endif /* INCLUDED_com_season_basis_BasisView */ 

#ifndef INCLUDED_com_season_basis_Button
#define INCLUDED_com_season_basis_Button

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include <com/season/basis/Control.h>
HX_DECLARE_CLASS3(com,season,basis,BasisView)
HX_DECLARE_CLASS3(com,season,basis,Button)
HX_DECLARE_CLASS3(com,season,basis,Control)
namespace com{
namespace season{
namespace basis{


class Button_obj : public ::com::season::basis::Control_obj{
	public:
		typedef ::com::season::basis::Control_obj super;
		typedef Button_obj OBJ_;
		Button_obj();
		Void __construct();

	public:
		static hx::ObjectPtr< Button_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		~Button_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("Button"); }

		virtual Void setImageForState( ::String assetName);
		Dynamic setImageForState_dyn();

		virtual Void setLabel( ::String text);
		Dynamic setLabel_dyn();

		virtual Void init( );

		static int TYPE; /* REM */ 
		static Dynamic cpp_button_setLabel; /* REM */ 
		static Dynamic &cpp_button_setLabel_dyn() { return cpp_button_setLabel;}
		static Dynamic cpp_button_setImageForState; /* REM */ 
		static Dynamic &cpp_button_setImageForState_dyn() { return cpp_button_setImageForState;}
};

} // end namespace com
} // end namespace season
} // end namespace basis

#endif /* INCLUDED_com_season_basis_Button */ 

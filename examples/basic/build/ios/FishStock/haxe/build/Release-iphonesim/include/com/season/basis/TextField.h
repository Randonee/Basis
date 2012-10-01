#ifndef INCLUDED_com_season_basis_TextField
#define INCLUDED_com_season_basis_TextField

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include <com/season/basis/Control.h>
HX_DECLARE_CLASS3(com,season,basis,BasisView)
HX_DECLARE_CLASS3(com,season,basis,Control)
HX_DECLARE_CLASS3(com,season,basis,TextField)
namespace com{
namespace season{
namespace basis{


class TextField_obj : public ::com::season::basis::Control_obj{
	public:
		typedef ::com::season::basis::Control_obj super;
		typedef TextField_obj OBJ_;
		TextField_obj();
		Void __construct();

	public:
		static hx::ObjectPtr< TextField_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		~TextField_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("TextField"); }

		virtual ::String getText( );
		Dynamic getText_dyn();

		virtual ::String setText( ::String value);
		Dynamic setText_dyn();

		::String text; /* REM */ 
		virtual Void init( );

		static int TYPE; /* REM */ 
		static Dynamic cpp_textField_setText; /* REM */ 
		static Dynamic &cpp_textField_setText_dyn() { return cpp_textField_setText;}
		static Dynamic cpp_textField_getText; /* REM */ 
		static Dynamic &cpp_textField_getText_dyn() { return cpp_textField_getText;}
};

} // end namespace com
} // end namespace season
} // end namespace basis

#endif /* INCLUDED_com_season_basis_TextField */ 

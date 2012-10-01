#ifndef INCLUDED_com_season_basis_Control
#define INCLUDED_com_season_basis_Control

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include <com/season/basis/BasisView.h>
HX_DECLARE_CLASS3(com,season,basis,BasisView)
HX_DECLARE_CLASS3(com,season,basis,Control)
namespace com{
namespace season{
namespace basis{


class Control_obj : public ::com::season::basis::BasisView_obj{
	public:
		typedef ::com::season::basis::BasisView_obj super;
		typedef Control_obj OBJ_;
		Control_obj();
		Void __construct();

	public:
		static hx::ObjectPtr< Control_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		~Control_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("Control"); }

		virtual Void init( );

		static int TYPE; /* REM */ 
};

} // end namespace com
} // end namespace season
} // end namespace basis

#endif /* INCLUDED_com_season_basis_Control */ 

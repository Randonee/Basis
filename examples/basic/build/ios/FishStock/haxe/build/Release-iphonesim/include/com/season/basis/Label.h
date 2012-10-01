#ifndef INCLUDED_com_season_basis_Label
#define INCLUDED_com_season_basis_Label

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include <com/season/basis/BasisView.h>
HX_DECLARE_CLASS3(com,season,basis,BasisView)
HX_DECLARE_CLASS3(com,season,basis,Label)
namespace com{
namespace season{
namespace basis{


class Label_obj : public ::com::season::basis::BasisView_obj{
	public:
		typedef ::com::season::basis::BasisView_obj super;
		typedef Label_obj OBJ_;
		Label_obj();
		Void __construct();

	public:
		static hx::ObjectPtr< Label_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		~Label_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("Label"); }

		virtual ::String getText( );
		Dynamic getText_dyn();

		virtual ::String setText( ::String value);
		Dynamic setText_dyn();

		::String text; /* REM */ 
		virtual Void init( );

		static int TYPE; /* REM */ 
		static Dynamic cpp_label_setText; /* REM */ 
		static Dynamic &cpp_label_setText_dyn() { return cpp_label_setText;}
		static Dynamic cpp_label_getText; /* REM */ 
		static Dynamic &cpp_label_getText_dyn() { return cpp_label_getText;}
};

} // end namespace com
} // end namespace season
} // end namespace basis

#endif /* INCLUDED_com_season_basis_Label */ 

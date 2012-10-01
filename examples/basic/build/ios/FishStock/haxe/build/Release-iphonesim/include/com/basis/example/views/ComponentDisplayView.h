#ifndef INCLUDED_com_basis_example_views_ComponentDisplayView
#define INCLUDED_com_basis_example_views_ComponentDisplayView

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

#include <com/season/basis/BasisView.h>
HX_DECLARE_CLASS4(com,basis,example,views,ComponentDisplayView)
HX_DECLARE_CLASS3(com,season,basis,BasisView)
HX_DECLARE_CLASS3(com,season,basis,Button)
HX_DECLARE_CLASS3(com,season,basis,Control)
HX_DECLARE_CLASS3(com,season,basis,Label)
HX_DECLARE_CLASS3(com,season,basis,TextField)
namespace com{
namespace basis{
namespace example{
namespace views{


class ComponentDisplayView_obj : public ::com::season::basis::BasisView_obj{
	public:
		typedef ::com::season::basis::BasisView_obj super;
		typedef ComponentDisplayView_obj OBJ_;
		ComponentDisplayView_obj();
		Void __construct();

	public:
		static hx::ObjectPtr< ComponentDisplayView_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		~ComponentDisplayView_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("ComponentDisplayView"); }

		virtual Void onInputChanged( int tag,::String type);
		Dynamic onInputChanged_dyn();

		virtual Void onButtonClick( int tag,::String type);
		Dynamic onButtonClick_dyn();

		::com::season::basis::Button _sampleButton; /* REM */ 
		::com::season::basis::Label _outputLabel; /* REM */ 
		::com::season::basis::TextField _outputField; /* REM */ 
		::com::season::basis::TextField _inputField; /* REM */ 
		::com::season::basis::Label _inputLabel; /* REM */ 
};

} // end namespace com
} // end namespace basis
} // end namespace example
} // end namespace views

#endif /* INCLUDED_com_basis_example_views_ComponentDisplayView */ 

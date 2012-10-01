#ifndef INCLUDED_com_basis_example_Main
#define INCLUDED_com_basis_example_Main

#ifndef HXCPP_H
#include <hxcpp.h>
#endif

HX_DECLARE_CLASS3(com,basis,example,Main)
namespace com{
namespace basis{
namespace example{


class Main_obj : public hx::Object{
	public:
		typedef hx::Object super;
		typedef Main_obj OBJ_;
		Main_obj();
		Void __construct();

	public:
		static hx::ObjectPtr< Main_obj > __new();
		static Dynamic __CreateEmpty();
		static Dynamic __Create(hx::DynamicArray inArgs);
		~Main_obj();

		HX_DO_RTTI;
		static void __boot();
		static void __register();
		void __Mark(HX_MARK_PARAMS);
		void __Visit(HX_VISIT_PARAMS);
		::String __ToString() const { return HX_CSTRING("Main"); }

		static Void main( );
		static Dynamic main_dyn();

};

} // end namespace com
} // end namespace basis
} // end namespace example

#endif /* INCLUDED_com_basis_example_Main */ 

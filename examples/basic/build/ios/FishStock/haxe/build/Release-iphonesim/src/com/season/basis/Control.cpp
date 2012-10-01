#include <hxcpp.h>

#ifndef INCLUDED_com_season_basis_BasisView
#include <com/season/basis/BasisView.h>
#endif
#ifndef INCLUDED_com_season_basis_Control
#include <com/season/basis/Control.h>
#endif
#ifndef INCLUDED_com_season_basis_ViewManager
#include <com/season/basis/ViewManager.h>
#endif
namespace com{
namespace season{
namespace basis{

Void Control_obj::__construct()
{
HX_STACK_PUSH("Control::new","com/season/basis/Control.hx",16);
{
	HX_STACK_LINE(16)
	super::__construct();
}
;
	return null();
}

Control_obj::~Control_obj() { }

Dynamic Control_obj::__CreateEmpty() { return  new Control_obj; }
hx::ObjectPtr< Control_obj > Control_obj::__new()
{  hx::ObjectPtr< Control_obj > result = new Control_obj();
	result->__construct();
	return result;}

Dynamic Control_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Control_obj > result = new Control_obj();
	result->__construct();
	return result;}

Void Control_obj::init( ){
{
		HX_STACK_PUSH("Control::init","com/season/basis/Control.hx",21);
		HX_STACK_THIS(this);
		HX_STACK_LINE(21)
		this->_tag = ::com::season::basis::ViewManager_obj::createView((int)2);
	}
return null();
}


int Control_obj::TYPE;


Control_obj::Control_obj()
{
}

void Control_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Control);
	super::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void Control_obj::__Visit(HX_VISIT_PARAMS)
{
	super::__Visit(HX_VISIT_ARG);
}

Dynamic Control_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"TYPE") ) { return TYPE; }
		if (HX_FIELD_EQ(inName,"init") ) { return init_dyn(); }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Control_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"TYPE") ) { TYPE=inValue.Cast< int >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Control_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("TYPE"),
	String(null()) };

static ::String sMemberFields[] = {
	HX_CSTRING("init"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Control_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(Control_obj::TYPE,"TYPE");
};

static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Control_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(Control_obj::TYPE,"TYPE");
};

Class Control_obj::__mClass;

void Control_obj::__register()
{
	Static(__mClass) = hx::RegisterClass(HX_CSTRING("com.season.basis.Control"), hx::TCanCast< Control_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics, sVisitStatics);
}

void Control_obj::__boot()
{
	TYPE= (int)2;
}

} // end namespace com
} // end namespace season
} // end namespace basis

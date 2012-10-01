#include <hxcpp.h>

#ifndef INCLUDED_com_season_basis_BasisView
#include <com/season/basis/BasisView.h>
#endif
#ifndef INCLUDED_com_season_basis_ViewManager
#include <com/season/basis/ViewManager.h>
#endif
#ifndef INCLUDED_cpp_Lib
#include <cpp/Lib.h>
#endif
namespace com{
namespace season{
namespace basis{

Void ViewManager_obj::__construct()
{
	return null();
}

ViewManager_obj::~ViewManager_obj() { }

Dynamic ViewManager_obj::__CreateEmpty() { return  new ViewManager_obj; }
hx::ObjectPtr< ViewManager_obj > ViewManager_obj::__new()
{  hx::ObjectPtr< ViewManager_obj > result = new ViewManager_obj();
	result->__construct();
	return result;}

Dynamic ViewManager_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< ViewManager_obj > result = new ViewManager_obj();
	result->__construct();
	return result;}

Dynamic ViewManager_obj::_locUpdateCB;

int ViewManager_obj::createView( int type){
	HX_STACK_PUSH("ViewManager::createView","com/season/basis/ViewManager.hx",16);
	HX_STACK_ARG(type,"type");
	HX_STACK_LINE(16)
	return ::com::season::basis::ViewManager_obj::cpp_call_create_view(type);
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(ViewManager_obj,createView,return )

Void ViewManager_obj::addToRootView( ::com::season::basis::BasisView view){
{
		HX_STACK_PUSH("ViewManager::addToRootView","com/season/basis/ViewManager.hx",23);
		HX_STACK_ARG(view,"view");
		HX_STACK_LINE(23)
		::com::season::basis::ViewManager_obj::cpp_call_add_to_root_view(view->getTag());
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC1(ViewManager_obj,addToRootView,(void))

Void ViewManager_obj::addEventListener( ::String type,int tag,Dynamic handler){
{
		HX_STACK_PUSH("ViewManager::addEventListener","com/season/basis/ViewManager.hx",30);
		HX_STACK_ARG(type,"type");
		HX_STACK_ARG(tag,"tag");
		HX_STACK_ARG(handler,"handler");
		HX_STACK_LINE(30)
		::com::season::basis::ViewManager_obj::cpp_call_add_event_listener(type,tag,handler);
	}
return null();
}


STATIC_HX_DEFINE_DYNAMIC_FUNC3(ViewManager_obj,addEventListener,(void))

Dynamic ViewManager_obj::cpp_call_create_view;

Dynamic ViewManager_obj::cpp_call_add_to_root_view;

Dynamic ViewManager_obj::cpp_call_add_event_listener;


ViewManager_obj::ViewManager_obj()
{
}

void ViewManager_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(ViewManager);
	HX_MARK_END_CLASS();
}

void ViewManager_obj::__Visit(HX_VISIT_PARAMS)
{
}

Dynamic ViewManager_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 10:
		if (HX_FIELD_EQ(inName,"createView") ) { return createView_dyn(); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"_locUpdateCB") ) { return _locUpdateCB; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"addToRootView") ) { return addToRootView_dyn(); }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"addEventListener") ) { return addEventListener_dyn(); }
		break;
	case 20:
		if (HX_FIELD_EQ(inName,"cpp_call_create_view") ) { return cpp_call_create_view; }
		break;
	case 25:
		if (HX_FIELD_EQ(inName,"cpp_call_add_to_root_view") ) { return cpp_call_add_to_root_view; }
		break;
	case 27:
		if (HX_FIELD_EQ(inName,"cpp_call_add_event_listener") ) { return cpp_call_add_event_listener; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic ViewManager_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 12:
		if (HX_FIELD_EQ(inName,"_locUpdateCB") ) { _locUpdateCB=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 20:
		if (HX_FIELD_EQ(inName,"cpp_call_create_view") ) { cpp_call_create_view=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 25:
		if (HX_FIELD_EQ(inName,"cpp_call_add_to_root_view") ) { cpp_call_add_to_root_view=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 27:
		if (HX_FIELD_EQ(inName,"cpp_call_add_event_listener") ) { cpp_call_add_event_listener=inValue.Cast< Dynamic >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void ViewManager_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("_locUpdateCB"),
	HX_CSTRING("createView"),
	HX_CSTRING("addToRootView"),
	HX_CSTRING("addEventListener"),
	HX_CSTRING("cpp_call_create_view"),
	HX_CSTRING("cpp_call_add_to_root_view"),
	HX_CSTRING("cpp_call_add_event_listener"),
	String(null()) };

static ::String sMemberFields[] = {
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(ViewManager_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(ViewManager_obj::_locUpdateCB,"_locUpdateCB");
	HX_MARK_MEMBER_NAME(ViewManager_obj::cpp_call_create_view,"cpp_call_create_view");
	HX_MARK_MEMBER_NAME(ViewManager_obj::cpp_call_add_to_root_view,"cpp_call_add_to_root_view");
	HX_MARK_MEMBER_NAME(ViewManager_obj::cpp_call_add_event_listener,"cpp_call_add_event_listener");
};

static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(ViewManager_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(ViewManager_obj::_locUpdateCB,"_locUpdateCB");
	HX_VISIT_MEMBER_NAME(ViewManager_obj::cpp_call_create_view,"cpp_call_create_view");
	HX_VISIT_MEMBER_NAME(ViewManager_obj::cpp_call_add_to_root_view,"cpp_call_add_to_root_view");
	HX_VISIT_MEMBER_NAME(ViewManager_obj::cpp_call_add_event_listener,"cpp_call_add_event_listener");
};

Class ViewManager_obj::__mClass;

void ViewManager_obj::__register()
{
	Static(__mClass) = hx::RegisterClass(HX_CSTRING("com.season.basis.ViewManager"), hx::TCanCast< ViewManager_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics, sVisitStatics);
}

void ViewManager_obj::__boot()
{
	cpp_call_create_view= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("viewmanager_createView"),(int)1);
	cpp_call_add_to_root_view= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("viewmanager_addToRootView"),(int)1);
	cpp_call_add_event_listener= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("viewmanager_addEventListener"),(int)3);
}

} // end namespace com
} // end namespace season
} // end namespace basis

#include <hxcpp.h>

#ifndef INCLUDED_com_season_basis_BasisView
#include <com/season/basis/BasisView.h>
#endif
#ifndef INCLUDED_com_season_basis_Button
#include <com/season/basis/Button.h>
#endif
#ifndef INCLUDED_com_season_basis_Control
#include <com/season/basis/Control.h>
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

Void Button_obj::__construct()
{
HX_STACK_PUSH("Button::new","com/season/basis/Button.hx",16);
{
	HX_STACK_LINE(16)
	super::__construct();
}
;
	return null();
}

Button_obj::~Button_obj() { }

Dynamic Button_obj::__CreateEmpty() { return  new Button_obj; }
hx::ObjectPtr< Button_obj > Button_obj::__new()
{  hx::ObjectPtr< Button_obj > result = new Button_obj();
	result->__construct();
	return result;}

Dynamic Button_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Button_obj > result = new Button_obj();
	result->__construct();
	return result;}

Void Button_obj::setImageForState( ::String assetName){
{
		HX_STACK_PUSH("Button::setImageForState","com/season/basis/Button.hx",33);
		HX_STACK_THIS(this);
		HX_STACK_ARG(assetName,"assetName");
		HX_STACK_LINE(33)
		::com::season::basis::Button_obj::cpp_button_setImageForState(this->_tag,assetName);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC1(Button_obj,setImageForState,(void))

Void Button_obj::setLabel( ::String text){
{
		HX_STACK_PUSH("Button::setLabel","com/season/basis/Button.hx",26);
		HX_STACK_THIS(this);
		HX_STACK_ARG(text,"text");
		HX_STACK_LINE(26)
		::com::season::basis::Button_obj::cpp_button_setLabel(this->_tag,text);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC1(Button_obj,setLabel,(void))

Void Button_obj::init( ){
{
		HX_STACK_PUSH("Button::init","com/season/basis/Button.hx",21);
		HX_STACK_THIS(this);
		HX_STACK_LINE(21)
		this->_tag = ::com::season::basis::ViewManager_obj::createView((int)3);
	}
return null();
}


int Button_obj::TYPE;

Dynamic Button_obj::cpp_button_setLabel;

Dynamic Button_obj::cpp_button_setImageForState;


Button_obj::Button_obj()
{
}

void Button_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Button);
	super::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void Button_obj::__Visit(HX_VISIT_PARAMS)
{
	super::__Visit(HX_VISIT_ARG);
}

Dynamic Button_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"TYPE") ) { return TYPE; }
		if (HX_FIELD_EQ(inName,"init") ) { return init_dyn(); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"setLabel") ) { return setLabel_dyn(); }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"setImageForState") ) { return setImageForState_dyn(); }
		break;
	case 19:
		if (HX_FIELD_EQ(inName,"cpp_button_setLabel") ) { return cpp_button_setLabel; }
		break;
	case 27:
		if (HX_FIELD_EQ(inName,"cpp_button_setImageForState") ) { return cpp_button_setImageForState; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Button_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"TYPE") ) { TYPE=inValue.Cast< int >(); return inValue; }
		break;
	case 19:
		if (HX_FIELD_EQ(inName,"cpp_button_setLabel") ) { cpp_button_setLabel=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 27:
		if (HX_FIELD_EQ(inName,"cpp_button_setImageForState") ) { cpp_button_setImageForState=inValue.Cast< Dynamic >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Button_obj::__GetFields(Array< ::String> &outFields)
{
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("TYPE"),
	HX_CSTRING("cpp_button_setLabel"),
	HX_CSTRING("cpp_button_setImageForState"),
	String(null()) };

static ::String sMemberFields[] = {
	HX_CSTRING("setImageForState"),
	HX_CSTRING("setLabel"),
	HX_CSTRING("init"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Button_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(Button_obj::TYPE,"TYPE");
	HX_MARK_MEMBER_NAME(Button_obj::cpp_button_setLabel,"cpp_button_setLabel");
	HX_MARK_MEMBER_NAME(Button_obj::cpp_button_setImageForState,"cpp_button_setImageForState");
};

static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Button_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(Button_obj::TYPE,"TYPE");
	HX_VISIT_MEMBER_NAME(Button_obj::cpp_button_setLabel,"cpp_button_setLabel");
	HX_VISIT_MEMBER_NAME(Button_obj::cpp_button_setImageForState,"cpp_button_setImageForState");
};

Class Button_obj::__mClass;

void Button_obj::__register()
{
	Static(__mClass) = hx::RegisterClass(HX_CSTRING("com.season.basis.Button"), hx::TCanCast< Button_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics, sVisitStatics);
}

void Button_obj::__boot()
{
	TYPE= (int)3;
	cpp_button_setLabel= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("button_setLabel"),(int)2);
	cpp_button_setImageForState= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("button_setImageForState"),(int)2);
}

} // end namespace com
} // end namespace season
} // end namespace basis

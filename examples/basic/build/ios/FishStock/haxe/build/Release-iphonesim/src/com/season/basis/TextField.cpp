#include <hxcpp.h>

#ifndef INCLUDED_com_season_basis_BasisView
#include <com/season/basis/BasisView.h>
#endif
#ifndef INCLUDED_com_season_basis_Control
#include <com/season/basis/Control.h>
#endif
#ifndef INCLUDED_com_season_basis_TextField
#include <com/season/basis/TextField.h>
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

Void TextField_obj::__construct()
{
HX_STACK_PUSH("TextField::new","com/season/basis/TextField.hx",16);
{
	HX_STACK_LINE(16)
	super::__construct();
}
;
	return null();
}

TextField_obj::~TextField_obj() { }

Dynamic TextField_obj::__CreateEmpty() { return  new TextField_obj; }
hx::ObjectPtr< TextField_obj > TextField_obj::__new()
{  hx::ObjectPtr< TextField_obj > result = new TextField_obj();
	result->__construct();
	return result;}

Dynamic TextField_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< TextField_obj > result = new TextField_obj();
	result->__construct();
	return result;}

::String TextField_obj::getText( ){
	HX_STACK_PUSH("TextField::getText","com/season/basis/TextField.hx",27);
	HX_STACK_THIS(this);
	HX_STACK_LINE(27)
	return ::com::season::basis::TextField_obj::cpp_textField_getText(this->_tag);
}


HX_DEFINE_DYNAMIC_FUNC0(TextField_obj,getText,return )

::String TextField_obj::setText( ::String value){
	HX_STACK_PUSH("TextField::setText","com/season/basis/TextField.hx",26);
	HX_STACK_THIS(this);
	HX_STACK_ARG(value,"value");
	HX_STACK_LINE(26)
	::com::season::basis::TextField_obj::cpp_textField_setText(this->_tag,value);
	HX_STACK_LINE(26)
	return ::com::season::basis::TextField_obj::cpp_textField_getText(this->_tag);
}


HX_DEFINE_DYNAMIC_FUNC1(TextField_obj,setText,return )

Void TextField_obj::init( ){
{
		HX_STACK_PUSH("TextField::init","com/season/basis/TextField.hx",21);
		HX_STACK_THIS(this);
		HX_STACK_LINE(21)
		this->_tag = ::com::season::basis::ViewManager_obj::createView((int)4);
	}
return null();
}


int TextField_obj::TYPE;

Dynamic TextField_obj::cpp_textField_setText;

Dynamic TextField_obj::cpp_textField_getText;


TextField_obj::TextField_obj()
{
}

void TextField_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(TextField);
	HX_MARK_MEMBER_NAME(text,"text");
	super::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void TextField_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(text,"text");
	super::__Visit(HX_VISIT_ARG);
}

Dynamic TextField_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"TYPE") ) { return TYPE; }
		if (HX_FIELD_EQ(inName,"text") ) { return inCallProp ? getText() : text; }
		if (HX_FIELD_EQ(inName,"init") ) { return init_dyn(); }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"getText") ) { return getText_dyn(); }
		if (HX_FIELD_EQ(inName,"setText") ) { return setText_dyn(); }
		break;
	case 21:
		if (HX_FIELD_EQ(inName,"cpp_textField_setText") ) { return cpp_textField_setText; }
		if (HX_FIELD_EQ(inName,"cpp_textField_getText") ) { return cpp_textField_getText; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic TextField_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"TYPE") ) { TYPE=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"text") ) { if (inCallProp) return setText(inValue);text=inValue.Cast< ::String >(); return inValue; }
		break;
	case 21:
		if (HX_FIELD_EQ(inName,"cpp_textField_setText") ) { cpp_textField_setText=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"cpp_textField_getText") ) { cpp_textField_getText=inValue.Cast< Dynamic >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void TextField_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("text"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("TYPE"),
	HX_CSTRING("cpp_textField_setText"),
	HX_CSTRING("cpp_textField_getText"),
	String(null()) };

static ::String sMemberFields[] = {
	HX_CSTRING("getText"),
	HX_CSTRING("setText"),
	HX_CSTRING("text"),
	HX_CSTRING("init"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(TextField_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(TextField_obj::TYPE,"TYPE");
	HX_MARK_MEMBER_NAME(TextField_obj::cpp_textField_setText,"cpp_textField_setText");
	HX_MARK_MEMBER_NAME(TextField_obj::cpp_textField_getText,"cpp_textField_getText");
};

static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(TextField_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(TextField_obj::TYPE,"TYPE");
	HX_VISIT_MEMBER_NAME(TextField_obj::cpp_textField_setText,"cpp_textField_setText");
	HX_VISIT_MEMBER_NAME(TextField_obj::cpp_textField_getText,"cpp_textField_getText");
};

Class TextField_obj::__mClass;

void TextField_obj::__register()
{
	Static(__mClass) = hx::RegisterClass(HX_CSTRING("com.season.basis.TextField"), hx::TCanCast< TextField_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics, sVisitStatics);
}

void TextField_obj::__boot()
{
	TYPE= (int)4;
	cpp_textField_setText= ::cpp::Lib_obj::load(HX_CSTRING("viewmanager"),HX_CSTRING("textField_setText"),(int)2);
	cpp_textField_getText= ::cpp::Lib_obj::load(HX_CSTRING("viewmanager"),HX_CSTRING("textField_getText"),(int)1);
}

} // end namespace com
} // end namespace season
} // end namespace basis

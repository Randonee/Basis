#include <hxcpp.h>

#ifndef INCLUDED_com_season_basis_BasisView
#include <com/season/basis/BasisView.h>
#endif
#ifndef INCLUDED_com_season_basis_Label
#include <com/season/basis/Label.h>
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

Void Label_obj::__construct()
{
HX_STACK_PUSH("Label::new","com/season/basis/Label.hx",16);
{
	HX_STACK_LINE(16)
	super::__construct();
}
;
	return null();
}

Label_obj::~Label_obj() { }

Dynamic Label_obj::__CreateEmpty() { return  new Label_obj; }
hx::ObjectPtr< Label_obj > Label_obj::__new()
{  hx::ObjectPtr< Label_obj > result = new Label_obj();
	result->__construct();
	return result;}

Dynamic Label_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< Label_obj > result = new Label_obj();
	result->__construct();
	return result;}

::String Label_obj::getText( ){
	HX_STACK_PUSH("Label::getText","com/season/basis/Label.hx",28);
	HX_STACK_THIS(this);
	HX_STACK_LINE(28)
	return ::com::season::basis::Label_obj::cpp_label_getText(this->_tag);
}


HX_DEFINE_DYNAMIC_FUNC0(Label_obj,getText,return )

::String Label_obj::setText( ::String value){
	HX_STACK_PUSH("Label::setText","com/season/basis/Label.hx",27);
	HX_STACK_THIS(this);
	HX_STACK_ARG(value,"value");
	HX_STACK_LINE(27)
	::com::season::basis::Label_obj::cpp_label_setText(this->_tag,value);
	HX_STACK_LINE(27)
	return ::com::season::basis::Label_obj::cpp_label_getText(this->_tag);
}


HX_DEFINE_DYNAMIC_FUNC1(Label_obj,setText,return )

Void Label_obj::init( ){
{
		HX_STACK_PUSH("Label::init","com/season/basis/Label.hx",21);
		HX_STACK_THIS(this);
		HX_STACK_LINE(21)
		this->_tag = ::com::season::basis::ViewManager_obj::createView((int)1);
	}
return null();
}


int Label_obj::TYPE;

Dynamic Label_obj::cpp_label_setText;

Dynamic Label_obj::cpp_label_getText;


Label_obj::Label_obj()
{
}

void Label_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(Label);
	HX_MARK_MEMBER_NAME(text,"text");
	super::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void Label_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(text,"text");
	super::__Visit(HX_VISIT_ARG);
}

Dynamic Label_obj::__Field(const ::String &inName,bool inCallProp)
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
	case 17:
		if (HX_FIELD_EQ(inName,"cpp_label_setText") ) { return cpp_label_setText; }
		if (HX_FIELD_EQ(inName,"cpp_label_getText") ) { return cpp_label_getText; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic Label_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 4:
		if (HX_FIELD_EQ(inName,"TYPE") ) { TYPE=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"text") ) { if (inCallProp) return setText(inValue);text=inValue.Cast< ::String >(); return inValue; }
		break;
	case 17:
		if (HX_FIELD_EQ(inName,"cpp_label_setText") ) { cpp_label_setText=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"cpp_label_getText") ) { cpp_label_getText=inValue.Cast< Dynamic >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void Label_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("text"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("TYPE"),
	HX_CSTRING("cpp_label_setText"),
	HX_CSTRING("cpp_label_getText"),
	String(null()) };

static ::String sMemberFields[] = {
	HX_CSTRING("getText"),
	HX_CSTRING("setText"),
	HX_CSTRING("text"),
	HX_CSTRING("init"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(Label_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(Label_obj::TYPE,"TYPE");
	HX_MARK_MEMBER_NAME(Label_obj::cpp_label_setText,"cpp_label_setText");
	HX_MARK_MEMBER_NAME(Label_obj::cpp_label_getText,"cpp_label_getText");
};

static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(Label_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(Label_obj::TYPE,"TYPE");
	HX_VISIT_MEMBER_NAME(Label_obj::cpp_label_setText,"cpp_label_setText");
	HX_VISIT_MEMBER_NAME(Label_obj::cpp_label_getText,"cpp_label_getText");
};

Class Label_obj::__mClass;

void Label_obj::__register()
{
	Static(__mClass) = hx::RegisterClass(HX_CSTRING("com.season.basis.Label"), hx::TCanCast< Label_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics, sVisitStatics);
}

void Label_obj::__boot()
{
	TYPE= (int)1;
	cpp_label_setText= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("label_setText"),(int)2);
	cpp_label_getText= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("label_getText"),(int)1);
}

} // end namespace com
} // end namespace season
} // end namespace basis

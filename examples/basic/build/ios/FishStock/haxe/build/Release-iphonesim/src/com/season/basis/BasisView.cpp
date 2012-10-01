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

Void BasisView_obj::__construct()
{
HX_STACK_PUSH("BasisView::new","com/season/basis/BasisView.hx",94);
{
	HX_STACK_LINE(94)
	this->init();
}
;
	return null();
}

BasisView_obj::~BasisView_obj() { }

Dynamic BasisView_obj::__CreateEmpty() { return  new BasisView_obj; }
hx::ObjectPtr< BasisView_obj > BasisView_obj::__new()
{  hx::ObjectPtr< BasisView_obj > result = new BasisView_obj();
	result->__construct();
	return result;}

Dynamic BasisView_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< BasisView_obj > result = new BasisView_obj();
	result->__construct();
	return result;}

Void BasisView_obj::removeSubview( ::com::season::basis::BasisView view){
{
		HX_STACK_PUSH("BasisView::removeSubview","com/season/basis/BasisView.hx",117);
		HX_STACK_THIS(this);
		HX_STACK_ARG(view,"view");
		HX_STACK_LINE(117)
		::com::season::basis::BasisView_obj::cpp_removeSubview(this->_tag,view->getTag());
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC1(BasisView_obj,removeSubview,(void))

Void BasisView_obj::addSubview( ::com::season::basis::BasisView view){
{
		HX_STACK_PUSH("BasisView::addSubview","com/season/basis/BasisView.hx",110);
		HX_STACK_THIS(this);
		HX_STACK_ARG(view,"view");
		HX_STACK_LINE(110)
		::com::season::basis::BasisView_obj::cpp_addSubview(this->_tag,view->getTag());
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC1(BasisView_obj,addSubview,(void))

Void BasisView_obj::addEventListener( ::String type,Dynamic handler){
{
		HX_STACK_PUSH("BasisView::addEventListener","com/season/basis/BasisView.hx",105);
		HX_STACK_THIS(this);
		HX_STACK_ARG(type,"type");
		HX_STACK_ARG(handler,"handler");
		HX_STACK_LINE(105)
		::com::season::basis::ViewManager_obj::addEventListener(type,this->_tag,handler);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(BasisView_obj,addEventListener,(void))

Void BasisView_obj::init( ){
{
		HX_STACK_PUSH("BasisView::init","com/season/basis/BasisView.hx",99);
		HX_STACK_THIS(this);
		HX_STACK_LINE(99)
		this->_tag = ::com::season::basis::ViewManager_obj::createView((int)0);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(BasisView_obj,init,(void))

Float BasisView_obj::setHeight( Float value){
	HX_STACK_PUSH("BasisView::setHeight","com/season/basis/BasisView.hx",84);
	HX_STACK_THIS(this);
	HX_STACK_ARG(value,"value");
	HX_STACK_LINE(86)
	::com::season::basis::BasisView_obj::cpp_call_view_set_height(this->getTag(),value);
	HX_STACK_LINE(87)
	return ::com::season::basis::BasisView_obj::cpp_call_view_get_height(this->getTag());
}


HX_DEFINE_DYNAMIC_FUNC1(BasisView_obj,setHeight,return )

Float BasisView_obj::getHeight( ){
	HX_STACK_PUSH("BasisView::getHeight","com/season/basis/BasisView.hx",78);
	HX_STACK_THIS(this);
	HX_STACK_LINE(78)
	return ::com::season::basis::BasisView_obj::cpp_call_view_get_height(this->getTag());
}


HX_DEFINE_DYNAMIC_FUNC0(BasisView_obj,getHeight,return )

Float BasisView_obj::setWidth( Float value){
	HX_STACK_PUSH("BasisView::setWidth","com/season/basis/BasisView.hx",69);
	HX_STACK_THIS(this);
	HX_STACK_ARG(value,"value");
	HX_STACK_LINE(71)
	::com::season::basis::BasisView_obj::cpp_call_view_set_width(this->getTag(),value);
	HX_STACK_LINE(72)
	return ::com::season::basis::BasisView_obj::cpp_call_view_get_width(this->getTag());
}


HX_DEFINE_DYNAMIC_FUNC1(BasisView_obj,setWidth,return )

Float BasisView_obj::getWidth( ){
	HX_STACK_PUSH("BasisView::getWidth","com/season/basis/BasisView.hx",63);
	HX_STACK_THIS(this);
	HX_STACK_LINE(63)
	return ::com::season::basis::BasisView_obj::cpp_call_view_get_width(this->getTag());
}


HX_DEFINE_DYNAMIC_FUNC0(BasisView_obj,getWidth,return )

Float BasisView_obj::setY( Float value){
	HX_STACK_PUSH("BasisView::setY","com/season/basis/BasisView.hx",54);
	HX_STACK_THIS(this);
	HX_STACK_ARG(value,"value");
	HX_STACK_LINE(56)
	::com::season::basis::BasisView_obj::cpp_call_view_set_y(this->getTag(),value);
	HX_STACK_LINE(57)
	return ::com::season::basis::BasisView_obj::cpp_call_view_get_y(this->getTag());
}


HX_DEFINE_DYNAMIC_FUNC1(BasisView_obj,setY,return )

Float BasisView_obj::getY( ){
	HX_STACK_PUSH("BasisView::getY","com/season/basis/BasisView.hx",48);
	HX_STACK_THIS(this);
	HX_STACK_LINE(48)
	return ::com::season::basis::BasisView_obj::cpp_call_view_get_y(this->getTag());
}


HX_DEFINE_DYNAMIC_FUNC0(BasisView_obj,getY,return )

Float BasisView_obj::setX( Float value){
	HX_STACK_PUSH("BasisView::setX","com/season/basis/BasisView.hx",39);
	HX_STACK_THIS(this);
	HX_STACK_ARG(value,"value");
	HX_STACK_LINE(41)
	::com::season::basis::BasisView_obj::cpp_call_view_set_x(this->getTag(),value);
	HX_STACK_LINE(42)
	return ::com::season::basis::BasisView_obj::cpp_call_view_get_x(this->getTag());
}


HX_DEFINE_DYNAMIC_FUNC1(BasisView_obj,setX,return )

Float BasisView_obj::getX( ){
	HX_STACK_PUSH("BasisView::getX","com/season/basis/BasisView.hx",33);
	HX_STACK_THIS(this);
	HX_STACK_LINE(33)
	return ::com::season::basis::BasisView_obj::cpp_call_view_get_x(this->getTag());
}


HX_DEFINE_DYNAMIC_FUNC0(BasisView_obj,getX,return )

::com::season::basis::BasisView BasisView_obj::getSuperView( ){
	HX_STACK_PUSH("BasisView::getSuperView","com/season/basis/BasisView.hx",23);
	HX_STACK_THIS(this);
	HX_STACK_LINE(25)
	::com::season::basis::BasisView view = ::com::season::basis::BasisView_obj::__new();		HX_STACK_VAR(view,"view");
	HX_STACK_LINE(26)
	view->setTag(::com::season::basis::BasisView_obj::cpp_getSuperview(this->getTag()));
	HX_STACK_LINE(27)
	return view;
}


HX_DEFINE_DYNAMIC_FUNC0(BasisView_obj,getSuperView,return )

int BasisView_obj::getTag( ){
	HX_STACK_PUSH("BasisView::getTag","com/season/basis/BasisView.hx",19);
	HX_STACK_THIS(this);
	HX_STACK_LINE(19)
	return this->_tag;
}


HX_DEFINE_DYNAMIC_FUNC0(BasisView_obj,getTag,return )

int BasisView_obj::setTag( int value){
	HX_STACK_PUSH("BasisView::setTag","com/season/basis/BasisView.hx",18);
	HX_STACK_THIS(this);
	HX_STACK_ARG(value,"value");
	HX_STACK_LINE(18)
	this->_tag = value;
	HX_STACK_LINE(18)
	return this->_tag;
}


HX_DEFINE_DYNAMIC_FUNC1(BasisView_obj,setTag,return )

int BasisView_obj::TYPE;

Dynamic BasisView_obj::_locUpdateCB;

Dynamic BasisView_obj::cpp_addSubview;

Dynamic BasisView_obj::cpp_getSuperview;

Dynamic BasisView_obj::cpp_removeSubview;

Dynamic BasisView_obj::cpp_call_view_set_x;

Dynamic BasisView_obj::cpp_call_view_get_x;

Dynamic BasisView_obj::cpp_call_view_set_y;

Dynamic BasisView_obj::cpp_call_view_get_y;

Dynamic BasisView_obj::cpp_call_view_set_width;

Dynamic BasisView_obj::cpp_call_view_get_width;

Dynamic BasisView_obj::cpp_call_view_set_height;

Dynamic BasisView_obj::cpp_call_view_get_height;


BasisView_obj::BasisView_obj()
{
}

void BasisView_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(BasisView);
	HX_MARK_MEMBER_NAME(_tag,"_tag");
	HX_MARK_MEMBER_NAME(height,"height");
	HX_MARK_MEMBER_NAME(width,"width");
	HX_MARK_MEMBER_NAME(y,"y");
	HX_MARK_MEMBER_NAME(x,"x");
	HX_MARK_MEMBER_NAME(superview,"superview");
	HX_MARK_MEMBER_NAME(tag,"tag");
	HX_MARK_END_CLASS();
}

void BasisView_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(_tag,"_tag");
	HX_VISIT_MEMBER_NAME(height,"height");
	HX_VISIT_MEMBER_NAME(width,"width");
	HX_VISIT_MEMBER_NAME(y,"y");
	HX_VISIT_MEMBER_NAME(x,"x");
	HX_VISIT_MEMBER_NAME(superview,"superview");
	HX_VISIT_MEMBER_NAME(tag,"tag");
}

Dynamic BasisView_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 1:
		if (HX_FIELD_EQ(inName,"y") ) { return inCallProp ? getY() : y; }
		if (HX_FIELD_EQ(inName,"x") ) { return inCallProp ? getX() : x; }
		break;
	case 3:
		if (HX_FIELD_EQ(inName,"tag") ) { return inCallProp ? getTag() : tag; }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"TYPE") ) { return TYPE; }
		if (HX_FIELD_EQ(inName,"init") ) { return init_dyn(); }
		if (HX_FIELD_EQ(inName,"_tag") ) { return _tag; }
		if (HX_FIELD_EQ(inName,"setY") ) { return setY_dyn(); }
		if (HX_FIELD_EQ(inName,"getY") ) { return getY_dyn(); }
		if (HX_FIELD_EQ(inName,"setX") ) { return setX_dyn(); }
		if (HX_FIELD_EQ(inName,"getX") ) { return getX_dyn(); }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"width") ) { return inCallProp ? getWidth() : width; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"height") ) { return inCallProp ? getHeight() : height; }
		if (HX_FIELD_EQ(inName,"getTag") ) { return getTag_dyn(); }
		if (HX_FIELD_EQ(inName,"setTag") ) { return setTag_dyn(); }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"setWidth") ) { return setWidth_dyn(); }
		if (HX_FIELD_EQ(inName,"getWidth") ) { return getWidth_dyn(); }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"setHeight") ) { return setHeight_dyn(); }
		if (HX_FIELD_EQ(inName,"getHeight") ) { return getHeight_dyn(); }
		if (HX_FIELD_EQ(inName,"superview") ) { return inCallProp ? getSuperView() : superview; }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"addSubview") ) { return addSubview_dyn(); }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"_locUpdateCB") ) { return _locUpdateCB; }
		if (HX_FIELD_EQ(inName,"getSuperView") ) { return getSuperView_dyn(); }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"removeSubview") ) { return removeSubview_dyn(); }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"cpp_addSubview") ) { return cpp_addSubview; }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"cpp_getSuperview") ) { return cpp_getSuperview; }
		if (HX_FIELD_EQ(inName,"addEventListener") ) { return addEventListener_dyn(); }
		break;
	case 17:
		if (HX_FIELD_EQ(inName,"cpp_removeSubview") ) { return cpp_removeSubview; }
		break;
	case 19:
		if (HX_FIELD_EQ(inName,"cpp_call_view_set_x") ) { return cpp_call_view_set_x; }
		if (HX_FIELD_EQ(inName,"cpp_call_view_get_x") ) { return cpp_call_view_get_x; }
		if (HX_FIELD_EQ(inName,"cpp_call_view_set_y") ) { return cpp_call_view_set_y; }
		if (HX_FIELD_EQ(inName,"cpp_call_view_get_y") ) { return cpp_call_view_get_y; }
		break;
	case 23:
		if (HX_FIELD_EQ(inName,"cpp_call_view_set_width") ) { return cpp_call_view_set_width; }
		if (HX_FIELD_EQ(inName,"cpp_call_view_get_width") ) { return cpp_call_view_get_width; }
		break;
	case 24:
		if (HX_FIELD_EQ(inName,"cpp_call_view_set_height") ) { return cpp_call_view_set_height; }
		if (HX_FIELD_EQ(inName,"cpp_call_view_get_height") ) { return cpp_call_view_get_height; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic BasisView_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 1:
		if (HX_FIELD_EQ(inName,"y") ) { if (inCallProp) return setY(inValue);y=inValue.Cast< Float >(); return inValue; }
		if (HX_FIELD_EQ(inName,"x") ) { if (inCallProp) return setX(inValue);x=inValue.Cast< Float >(); return inValue; }
		break;
	case 3:
		if (HX_FIELD_EQ(inName,"tag") ) { if (inCallProp) return setTag(inValue);tag=inValue.Cast< int >(); return inValue; }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"TYPE") ) { TYPE=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"_tag") ) { _tag=inValue.Cast< int >(); return inValue; }
		break;
	case 5:
		if (HX_FIELD_EQ(inName,"width") ) { if (inCallProp) return setWidth(inValue);width=inValue.Cast< Float >(); return inValue; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"height") ) { if (inCallProp) return setHeight(inValue);height=inValue.Cast< Float >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"superview") ) { superview=inValue.Cast< ::com::season::basis::BasisView >(); return inValue; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"_locUpdateCB") ) { _locUpdateCB=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"cpp_addSubview") ) { cpp_addSubview=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 16:
		if (HX_FIELD_EQ(inName,"cpp_getSuperview") ) { cpp_getSuperview=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 17:
		if (HX_FIELD_EQ(inName,"cpp_removeSubview") ) { cpp_removeSubview=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 19:
		if (HX_FIELD_EQ(inName,"cpp_call_view_set_x") ) { cpp_call_view_set_x=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"cpp_call_view_get_x") ) { cpp_call_view_get_x=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"cpp_call_view_set_y") ) { cpp_call_view_set_y=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"cpp_call_view_get_y") ) { cpp_call_view_get_y=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 23:
		if (HX_FIELD_EQ(inName,"cpp_call_view_set_width") ) { cpp_call_view_set_width=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"cpp_call_view_get_width") ) { cpp_call_view_get_width=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 24:
		if (HX_FIELD_EQ(inName,"cpp_call_view_set_height") ) { cpp_call_view_set_height=inValue.Cast< Dynamic >(); return inValue; }
		if (HX_FIELD_EQ(inName,"cpp_call_view_get_height") ) { cpp_call_view_get_height=inValue.Cast< Dynamic >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void BasisView_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("_tag"));
	outFields->push(HX_CSTRING("height"));
	outFields->push(HX_CSTRING("width"));
	outFields->push(HX_CSTRING("y"));
	outFields->push(HX_CSTRING("x"));
	outFields->push(HX_CSTRING("superview"));
	outFields->push(HX_CSTRING("tag"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("TYPE"),
	HX_CSTRING("_locUpdateCB"),
	HX_CSTRING("cpp_addSubview"),
	HX_CSTRING("cpp_getSuperview"),
	HX_CSTRING("cpp_removeSubview"),
	HX_CSTRING("cpp_call_view_set_x"),
	HX_CSTRING("cpp_call_view_get_x"),
	HX_CSTRING("cpp_call_view_set_y"),
	HX_CSTRING("cpp_call_view_get_y"),
	HX_CSTRING("cpp_call_view_set_width"),
	HX_CSTRING("cpp_call_view_get_width"),
	HX_CSTRING("cpp_call_view_set_height"),
	HX_CSTRING("cpp_call_view_get_height"),
	String(null()) };

static ::String sMemberFields[] = {
	HX_CSTRING("removeSubview"),
	HX_CSTRING("addSubview"),
	HX_CSTRING("addEventListener"),
	HX_CSTRING("init"),
	HX_CSTRING("_tag"),
	HX_CSTRING("setHeight"),
	HX_CSTRING("getHeight"),
	HX_CSTRING("height"),
	HX_CSTRING("setWidth"),
	HX_CSTRING("getWidth"),
	HX_CSTRING("width"),
	HX_CSTRING("setY"),
	HX_CSTRING("getY"),
	HX_CSTRING("y"),
	HX_CSTRING("setX"),
	HX_CSTRING("getX"),
	HX_CSTRING("x"),
	HX_CSTRING("getSuperView"),
	HX_CSTRING("superview"),
	HX_CSTRING("getTag"),
	HX_CSTRING("setTag"),
	HX_CSTRING("tag"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(BasisView_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(BasisView_obj::TYPE,"TYPE");
	HX_MARK_MEMBER_NAME(BasisView_obj::_locUpdateCB,"_locUpdateCB");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_addSubview,"cpp_addSubview");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_getSuperview,"cpp_getSuperview");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_removeSubview,"cpp_removeSubview");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_call_view_set_x,"cpp_call_view_set_x");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_call_view_get_x,"cpp_call_view_get_x");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_call_view_set_y,"cpp_call_view_set_y");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_call_view_get_y,"cpp_call_view_get_y");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_call_view_set_width,"cpp_call_view_set_width");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_call_view_get_width,"cpp_call_view_get_width");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_call_view_set_height,"cpp_call_view_set_height");
	HX_MARK_MEMBER_NAME(BasisView_obj::cpp_call_view_get_height,"cpp_call_view_get_height");
};

static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(BasisView_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(BasisView_obj::TYPE,"TYPE");
	HX_VISIT_MEMBER_NAME(BasisView_obj::_locUpdateCB,"_locUpdateCB");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_addSubview,"cpp_addSubview");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_getSuperview,"cpp_getSuperview");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_removeSubview,"cpp_removeSubview");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_call_view_set_x,"cpp_call_view_set_x");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_call_view_get_x,"cpp_call_view_get_x");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_call_view_set_y,"cpp_call_view_set_y");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_call_view_get_y,"cpp_call_view_get_y");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_call_view_set_width,"cpp_call_view_set_width");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_call_view_get_width,"cpp_call_view_get_width");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_call_view_set_height,"cpp_call_view_set_height");
	HX_VISIT_MEMBER_NAME(BasisView_obj::cpp_call_view_get_height,"cpp_call_view_get_height");
};

Class BasisView_obj::__mClass;

void BasisView_obj::__register()
{
	Static(__mClass) = hx::RegisterClass(HX_CSTRING("com.season.basis.BasisView"), hx::TCanCast< BasisView_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics, sVisitStatics);
}

void BasisView_obj::__boot()
{
	TYPE= (int)0;
	cpp_addSubview= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_addSubview"),(int)2);
	cpp_getSuperview= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_getSuperview"),(int)1);
	cpp_removeSubview= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_removeSubview"),(int)2);
	cpp_call_view_set_x= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_setFrameX"),(int)2);
	cpp_call_view_get_x= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_getFrameX"),(int)1);
	cpp_call_view_set_y= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_setFrameY"),(int)2);
	cpp_call_view_get_y= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_getFrameY"),(int)1);
	cpp_call_view_set_width= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_setFrameWidth"),(int)2);
	cpp_call_view_get_width= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_getFrameWidth"),(int)1);
	cpp_call_view_set_height= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_setFrameHeight"),(int)2);
	cpp_call_view_get_height= ::cpp::Lib_obj::load(HX_CSTRING("basis"),HX_CSTRING("view_getFrameHeight"),(int)1);
}

} // end namespace com
} // end namespace season
} // end namespace basis

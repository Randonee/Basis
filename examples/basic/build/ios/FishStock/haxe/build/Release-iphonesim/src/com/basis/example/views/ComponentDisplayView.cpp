#include <hxcpp.h>

#ifndef INCLUDED_com_basis_example_views_ComponentDisplayView
#include <com/basis/example/views/ComponentDisplayView.h>
#endif
#ifndef INCLUDED_com_season_basis_BasisView
#include <com/season/basis/BasisView.h>
#endif
#ifndef INCLUDED_com_season_basis_Button
#include <com/season/basis/Button.h>
#endif
#ifndef INCLUDED_com_season_basis_Control
#include <com/season/basis/Control.h>
#endif
#ifndef INCLUDED_com_season_basis_Label
#include <com/season/basis/Label.h>
#endif
#ifndef INCLUDED_com_season_basis_TextField
#include <com/season/basis/TextField.h>
#endif
namespace com{
namespace basis{
namespace example{
namespace views{

Void ComponentDisplayView_obj::__construct()
{
HX_STACK_PUSH("ComponentDisplayView::new","com/basis/example/views/ComponentDisplayView.hx",19);
{
	HX_STACK_LINE(20)
	super::__construct();
	HX_STACK_LINE(22)
	this->_inputLabel = ::com::season::basis::Label_obj::__new();
	HX_STACK_LINE(23)
	this->addSubview(this->_inputLabel);
	HX_STACK_LINE(24)
	this->_inputLabel->setText(HX_CSTRING("Input"));
	HX_STACK_LINE(25)
	this->_inputLabel->setHeight((int)20);
	HX_STACK_LINE(26)
	this->_inputLabel->setX((int)5);
	HX_STACK_LINE(28)
	this->_inputField = ::com::season::basis::TextField_obj::__new();
	HX_STACK_LINE(29)
	this->addSubview(this->_inputField);
	HX_STACK_LINE(30)
	this->_inputField->setY((int)30);
	HX_STACK_LINE(31)
	this->_inputField->setX((int)5);
	HX_STACK_LINE(32)
	this->_inputField->addEventListener(HX_CSTRING("CONTROL_VALUE_CHANGED"),this->onInputChanged_dyn());
	HX_STACK_LINE(34)
	this->_outputLabel = ::com::season::basis::Label_obj::__new();
	HX_STACK_LINE(35)
	this->addSubview(this->_outputLabel);
	HX_STACK_LINE(36)
	this->_outputLabel->setText(HX_CSTRING("Output"));
	HX_STACK_LINE(37)
	this->_outputLabel->setHeight((int)20);
	HX_STACK_LINE(38)
	this->_outputLabel->setX((int)5);
	HX_STACK_LINE(39)
	this->_outputLabel->setY((int)80);
	HX_STACK_LINE(41)
	this->_outputField = ::com::season::basis::TextField_obj::__new();
	HX_STACK_LINE(42)
	this->addSubview(this->_outputField);
	HX_STACK_LINE(43)
	this->_outputField->setY((int)110);
	HX_STACK_LINE(44)
	this->_outputField->setX((int)5);
	HX_STACK_LINE(46)
	this->_sampleButton = ::com::season::basis::Button_obj::__new();
	HX_STACK_LINE(47)
	this->_sampleButton->setWidth((int)70);
	HX_STACK_LINE(48)
	this->_sampleButton->setHeight((int)30);
	HX_STACK_LINE(49)
	this->_sampleButton->setY((int)160);
	HX_STACK_LINE(50)
	this->_sampleButton->setX((int)50);
	HX_STACK_LINE(51)
	this->_sampleButton->setLabel(HX_CSTRING("login"));
	HX_STACK_LINE(52)
	this->_sampleButton->addEventListener(HX_CSTRING("CONTROL_TOUCH_UP_INSIDE"),this->onButtonClick_dyn());
	HX_STACK_LINE(55)
	this->addSubview(this->_sampleButton);
}
;
	return null();
}

ComponentDisplayView_obj::~ComponentDisplayView_obj() { }

Dynamic ComponentDisplayView_obj::__CreateEmpty() { return  new ComponentDisplayView_obj; }
hx::ObjectPtr< ComponentDisplayView_obj > ComponentDisplayView_obj::__new()
{  hx::ObjectPtr< ComponentDisplayView_obj > result = new ComponentDisplayView_obj();
	result->__construct();
	return result;}

Dynamic ComponentDisplayView_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< ComponentDisplayView_obj > result = new ComponentDisplayView_obj();
	result->__construct();
	return result;}

Void ComponentDisplayView_obj::onInputChanged( int tag,::String type){
{
		HX_STACK_PUSH("ComponentDisplayView::onInputChanged","com/basis/example/views/ComponentDisplayView.hx",64);
		HX_STACK_THIS(this);
		HX_STACK_ARG(tag,"tag");
		HX_STACK_ARG(type,"type");
		HX_STACK_LINE(64)
		this->_outputField->setText(this->_inputField->getText());
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(ComponentDisplayView_obj,onInputChanged,(void))

Void ComponentDisplayView_obj::onButtonClick( int tag,::String type){
{
		HX_STACK_PUSH("ComponentDisplayView::onButtonClick","com/basis/example/views/ComponentDisplayView.hx",59);
		HX_STACK_THIS(this);
		HX_STACK_ARG(tag,"tag");
		HX_STACK_ARG(type,"type");
		HX_STACK_LINE(59)
		this->_inputField->setText(HX_CSTRING("Button Clicked"));
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(ComponentDisplayView_obj,onButtonClick,(void))


ComponentDisplayView_obj::ComponentDisplayView_obj()
{
}

void ComponentDisplayView_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(ComponentDisplayView);
	HX_MARK_MEMBER_NAME(_sampleButton,"_sampleButton");
	HX_MARK_MEMBER_NAME(_outputLabel,"_outputLabel");
	HX_MARK_MEMBER_NAME(_outputField,"_outputField");
	HX_MARK_MEMBER_NAME(_inputField,"_inputField");
	HX_MARK_MEMBER_NAME(_inputLabel,"_inputLabel");
	super::__Mark(HX_MARK_ARG);
	HX_MARK_END_CLASS();
}

void ComponentDisplayView_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(_sampleButton,"_sampleButton");
	HX_VISIT_MEMBER_NAME(_outputLabel,"_outputLabel");
	HX_VISIT_MEMBER_NAME(_outputField,"_outputField");
	HX_VISIT_MEMBER_NAME(_inputField,"_inputField");
	HX_VISIT_MEMBER_NAME(_inputLabel,"_inputLabel");
	super::__Visit(HX_VISIT_ARG);
}

Dynamic ComponentDisplayView_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 11:
		if (HX_FIELD_EQ(inName,"_inputField") ) { return _inputField; }
		if (HX_FIELD_EQ(inName,"_inputLabel") ) { return _inputLabel; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"_outputLabel") ) { return _outputLabel; }
		if (HX_FIELD_EQ(inName,"_outputField") ) { return _outputField; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"onButtonClick") ) { return onButtonClick_dyn(); }
		if (HX_FIELD_EQ(inName,"_sampleButton") ) { return _sampleButton; }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"onInputChanged") ) { return onInputChanged_dyn(); }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic ComponentDisplayView_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 11:
		if (HX_FIELD_EQ(inName,"_inputField") ) { _inputField=inValue.Cast< ::com::season::basis::TextField >(); return inValue; }
		if (HX_FIELD_EQ(inName,"_inputLabel") ) { _inputLabel=inValue.Cast< ::com::season::basis::Label >(); return inValue; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"_outputLabel") ) { _outputLabel=inValue.Cast< ::com::season::basis::Label >(); return inValue; }
		if (HX_FIELD_EQ(inName,"_outputField") ) { _outputField=inValue.Cast< ::com::season::basis::TextField >(); return inValue; }
		break;
	case 13:
		if (HX_FIELD_EQ(inName,"_sampleButton") ) { _sampleButton=inValue.Cast< ::com::season::basis::Button >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void ComponentDisplayView_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("_sampleButton"));
	outFields->push(HX_CSTRING("_outputLabel"));
	outFields->push(HX_CSTRING("_outputField"));
	outFields->push(HX_CSTRING("_inputField"));
	outFields->push(HX_CSTRING("_inputLabel"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	String(null()) };

static ::String sMemberFields[] = {
	HX_CSTRING("onInputChanged"),
	HX_CSTRING("onButtonClick"),
	HX_CSTRING("_sampleButton"),
	HX_CSTRING("_outputLabel"),
	HX_CSTRING("_outputField"),
	HX_CSTRING("_inputField"),
	HX_CSTRING("_inputLabel"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(ComponentDisplayView_obj::__mClass,"__mClass");
};

static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(ComponentDisplayView_obj::__mClass,"__mClass");
};

Class ComponentDisplayView_obj::__mClass;

void ComponentDisplayView_obj::__register()
{
	Static(__mClass) = hx::RegisterClass(HX_CSTRING("com.basis.example.views.ComponentDisplayView"), hx::TCanCast< ComponentDisplayView_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics, sVisitStatics);
}

void ComponentDisplayView_obj::__boot()
{
}

} // end namespace com
} // end namespace basis
} // end namespace example
} // end namespace views

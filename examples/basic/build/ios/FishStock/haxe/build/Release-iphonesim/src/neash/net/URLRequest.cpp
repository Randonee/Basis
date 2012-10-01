#include <hxcpp.h>

#ifndef INCLUDED_Reflect
#include <Reflect.h>
#endif
#ifndef INCLUDED_Std
#include <Std.h>
#endif
#ifndef INCLUDED_haxe_io_Bytes
#include <haxe/io/Bytes.h>
#endif
#ifndef INCLUDED_neash_net_URLRequest
#include <neash/net/URLRequest.h>
#endif
#ifndef INCLUDED_neash_net_URLVariables
#include <neash/net/URLVariables.h>
#endif
#ifndef INCLUDED_neash_utils_ByteArray
#include <neash/utils/ByteArray.h>
#endif
#ifndef INCLUDED_neash_utils_IDataInput
#include <neash/utils/IDataInput.h>
#endif
namespace neash{
namespace net{

Void URLRequest_obj::__construct(::String inURL)
{
HX_STACK_PUSH("URLRequest::new","neash/net/URLRequest.hx",32);
{
	HX_STACK_LINE(33)
	if (((inURL != null()))){
		HX_STACK_LINE(34)
		this->url = inURL;
	}
	HX_STACK_LINE(35)
	this->verbose = false;
	HX_STACK_LINE(36)
	this->userPassword = HX_CSTRING("");
	HX_STACK_LINE(37)
	this->cookieString = HX_CSTRING("");
	HX_STACK_LINE(38)
	this->authType = (int)0;
	HX_STACK_LINE(39)
	this->contentType = HX_CSTRING("application/x-www-form-urlencoded");
	HX_STACK_LINE(40)
	this->method = HX_CSTRING("GET");
}
;
	return null();
}

URLRequest_obj::~URLRequest_obj() { }

Dynamic URLRequest_obj::__CreateEmpty() { return  new URLRequest_obj; }
hx::ObjectPtr< URLRequest_obj > URLRequest_obj::__new(::String inURL)
{  hx::ObjectPtr< URLRequest_obj > result = new URLRequest_obj();
	result->__construct(inURL);
	return result;}

Dynamic URLRequest_obj::__Create(hx::DynamicArray inArgs)
{  hx::ObjectPtr< URLRequest_obj > result = new URLRequest_obj();
	result->__construct(inArgs[0]);
	return result;}

Void URLRequest_obj::nmePrepare( ){
{
		HX_STACK_PUSH("URLRequest::nmePrepare","neash/net/URLRequest.hx",59);
		HX_STACK_THIS(this);
		HX_STACK_LINE(59)
		if (((this->data == null()))){
			HX_STACK_LINE(61)
			this->nmeBytes = null();
		}
		else{
			HX_STACK_LINE(63)
			if ((::Std_obj::is(this->data,hx::ClassOf< ::neash::utils::ByteArray >()))){
				HX_STACK_LINE(65)
				this->nmeBytes = this->data;
			}
			else{
				HX_STACK_LINE(66)
				if ((::Std_obj::is(this->data,hx::ClassOf< ::neash::net::URLVariables >()))){
					HX_STACK_LINE(68)
					::neash::net::URLVariables vars = this->data;		HX_STACK_VAR(vars,"vars");
					HX_STACK_LINE(69)
					::String str = vars->toString();		HX_STACK_VAR(str,"str");
					HX_STACK_LINE(70)
					this->nmeBytes = ::neash::utils::ByteArray_obj::__new(null());
					HX_STACK_LINE(71)
					this->nmeBytes->writeUTFBytes(str);
				}
				else{
					HX_STACK_LINE(73)
					if ((::Std_obj::is(this->data,hx::ClassOf< ::String >()))){
						HX_STACK_LINE(75)
						::String str = this->data;		HX_STACK_VAR(str,"str");
						HX_STACK_LINE(76)
						this->nmeBytes = ::neash::utils::ByteArray_obj::__new(null());
						HX_STACK_LINE(77)
						this->nmeBytes->writeUTFBytes(str);
					}
					else{
						HX_STACK_LINE(79)
						if ((::Std_obj::is(this->data,hx::ClassOf< ::Dynamic >()))){
							HX_STACK_LINE(81)
							::neash::net::URLVariables vars = ::neash::net::URLVariables_obj::__new(null());		HX_STACK_VAR(vars,"vars");
							HX_STACK_LINE(82)
							{
								HX_STACK_LINE(82)
								int _g = (int)0;		HX_STACK_VAR(_g,"_g");
								Array< ::String > _g1 = ::Reflect_obj::fields(this->data);		HX_STACK_VAR(_g1,"_g1");
								HX_STACK_LINE(82)
								while(((_g < _g1->length))){
									HX_STACK_LINE(82)
									::String i = _g1->__get(_g);		HX_STACK_VAR(i,"i");
									HX_STACK_LINE(82)
									++(_g);
									HX_STACK_LINE(83)
									if (((vars != null()))){
										HX_STACK_LINE(83)
										vars->__SetField(i,::Reflect_obj::field(this->data,i),false);
									}
								}
							}
							HX_STACK_LINE(85)
							::String str = vars->toString();		HX_STACK_VAR(str,"str");
							HX_STACK_LINE(86)
							this->nmeBytes = ::neash::utils::ByteArray_obj::__new(null());
							HX_STACK_LINE(87)
							this->nmeBytes->writeUTFBytes(str);
						}
						else{
							HX_STACK_LINE(90)
							hx::Throw (HX_CSTRING("Unknown data type"));
						}
					}
				}
			}
		}
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC0(URLRequest_obj,nmePrepare,(void))

Void URLRequest_obj::digestAuth( ::String inUser,::String inPasswd){
{
		HX_STACK_PUSH("URLRequest::digestAuth","neash/net/URLRequest.hx",52);
		HX_STACK_THIS(this);
		HX_STACK_ARG(inUser,"inUser");
		HX_STACK_ARG(inPasswd,"inPasswd");
		HX_STACK_LINE(53)
		this->authType = (int)2;
		HX_STACK_LINE(54)
		this->userPassword = ((inUser + HX_CSTRING(":")) + inPasswd);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(URLRequest_obj,digestAuth,(void))

Void URLRequest_obj::basicAuth( ::String inUser,::String inPasswd){
{
		HX_STACK_PUSH("URLRequest::basicAuth","neash/net/URLRequest.hx",45);
		HX_STACK_THIS(this);
		HX_STACK_ARG(inUser,"inUser");
		HX_STACK_ARG(inPasswd,"inPasswd");
		HX_STACK_LINE(46)
		this->authType = (int)1;
		HX_STACK_LINE(47)
		this->userPassword = ((inUser + HX_CSTRING(":")) + inPasswd);
	}
return null();
}


HX_DEFINE_DYNAMIC_FUNC2(URLRequest_obj,basicAuth,(void))

int URLRequest_obj::AUTH_BASIC;

int URLRequest_obj::AUTH_DIGEST;

int URLRequest_obj::AUTH_GSSNEGOTIATE;

int URLRequest_obj::AUTH_NTLM;

int URLRequest_obj::AUTH_DIGEST_IE;

int URLRequest_obj::AUTH_DIGEST_ANY;


URLRequest_obj::URLRequest_obj()
{
}

void URLRequest_obj::__Mark(HX_MARK_PARAMS)
{
	HX_MARK_BEGIN_CLASS(URLRequest);
	HX_MARK_MEMBER_NAME(nmeBytes,"nmeBytes");
	HX_MARK_MEMBER_NAME(data,"data");
	HX_MARK_MEMBER_NAME(contentType,"contentType");
	HX_MARK_MEMBER_NAME(method,"method");
	HX_MARK_MEMBER_NAME(verbose,"verbose");
	HX_MARK_MEMBER_NAME(userPassword,"userPassword");
	HX_MARK_MEMBER_NAME(url,"url");
	HX_MARK_MEMBER_NAME(cookieString,"cookieString");
	HX_MARK_MEMBER_NAME(authType,"authType");
	HX_MARK_END_CLASS();
}

void URLRequest_obj::__Visit(HX_VISIT_PARAMS)
{
	HX_VISIT_MEMBER_NAME(nmeBytes,"nmeBytes");
	HX_VISIT_MEMBER_NAME(data,"data");
	HX_VISIT_MEMBER_NAME(contentType,"contentType");
	HX_VISIT_MEMBER_NAME(method,"method");
	HX_VISIT_MEMBER_NAME(verbose,"verbose");
	HX_VISIT_MEMBER_NAME(userPassword,"userPassword");
	HX_VISIT_MEMBER_NAME(url,"url");
	HX_VISIT_MEMBER_NAME(cookieString,"cookieString");
	HX_VISIT_MEMBER_NAME(authType,"authType");
}

Dynamic URLRequest_obj::__Field(const ::String &inName,bool inCallProp)
{
	switch(inName.length) {
	case 3:
		if (HX_FIELD_EQ(inName,"url") ) { return url; }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"data") ) { return data; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"method") ) { return method; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"verbose") ) { return verbose; }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"nmeBytes") ) { return nmeBytes; }
		if (HX_FIELD_EQ(inName,"authType") ) { return authType; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"AUTH_NTLM") ) { return AUTH_NTLM; }
		if (HX_FIELD_EQ(inName,"basicAuth") ) { return basicAuth_dyn(); }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"AUTH_BASIC") ) { return AUTH_BASIC; }
		if (HX_FIELD_EQ(inName,"nmePrepare") ) { return nmePrepare_dyn(); }
		if (HX_FIELD_EQ(inName,"digestAuth") ) { return digestAuth_dyn(); }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"AUTH_DIGEST") ) { return AUTH_DIGEST; }
		if (HX_FIELD_EQ(inName,"contentType") ) { return contentType; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"userPassword") ) { return userPassword; }
		if (HX_FIELD_EQ(inName,"cookieString") ) { return cookieString; }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"AUTH_DIGEST_IE") ) { return AUTH_DIGEST_IE; }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"AUTH_DIGEST_ANY") ) { return AUTH_DIGEST_ANY; }
		break;
	case 17:
		if (HX_FIELD_EQ(inName,"AUTH_GSSNEGOTIATE") ) { return AUTH_GSSNEGOTIATE; }
	}
	return super::__Field(inName,inCallProp);
}

Dynamic URLRequest_obj::__SetField(const ::String &inName,const Dynamic &inValue,bool inCallProp)
{
	switch(inName.length) {
	case 3:
		if (HX_FIELD_EQ(inName,"url") ) { url=inValue.Cast< ::String >(); return inValue; }
		break;
	case 4:
		if (HX_FIELD_EQ(inName,"data") ) { data=inValue.Cast< Dynamic >(); return inValue; }
		break;
	case 6:
		if (HX_FIELD_EQ(inName,"method") ) { method=inValue.Cast< ::String >(); return inValue; }
		break;
	case 7:
		if (HX_FIELD_EQ(inName,"verbose") ) { verbose=inValue.Cast< bool >(); return inValue; }
		break;
	case 8:
		if (HX_FIELD_EQ(inName,"nmeBytes") ) { nmeBytes=inValue.Cast< ::neash::utils::ByteArray >(); return inValue; }
		if (HX_FIELD_EQ(inName,"authType") ) { authType=inValue.Cast< int >(); return inValue; }
		break;
	case 9:
		if (HX_FIELD_EQ(inName,"AUTH_NTLM") ) { AUTH_NTLM=inValue.Cast< int >(); return inValue; }
		break;
	case 10:
		if (HX_FIELD_EQ(inName,"AUTH_BASIC") ) { AUTH_BASIC=inValue.Cast< int >(); return inValue; }
		break;
	case 11:
		if (HX_FIELD_EQ(inName,"AUTH_DIGEST") ) { AUTH_DIGEST=inValue.Cast< int >(); return inValue; }
		if (HX_FIELD_EQ(inName,"contentType") ) { contentType=inValue.Cast< ::String >(); return inValue; }
		break;
	case 12:
		if (HX_FIELD_EQ(inName,"userPassword") ) { userPassword=inValue.Cast< ::String >(); return inValue; }
		if (HX_FIELD_EQ(inName,"cookieString") ) { cookieString=inValue.Cast< ::String >(); return inValue; }
		break;
	case 14:
		if (HX_FIELD_EQ(inName,"AUTH_DIGEST_IE") ) { AUTH_DIGEST_IE=inValue.Cast< int >(); return inValue; }
		break;
	case 15:
		if (HX_FIELD_EQ(inName,"AUTH_DIGEST_ANY") ) { AUTH_DIGEST_ANY=inValue.Cast< int >(); return inValue; }
		break;
	case 17:
		if (HX_FIELD_EQ(inName,"AUTH_GSSNEGOTIATE") ) { AUTH_GSSNEGOTIATE=inValue.Cast< int >(); return inValue; }
	}
	return super::__SetField(inName,inValue,inCallProp);
}

void URLRequest_obj::__GetFields(Array< ::String> &outFields)
{
	outFields->push(HX_CSTRING("nmeBytes"));
	outFields->push(HX_CSTRING("data"));
	outFields->push(HX_CSTRING("contentType"));
	outFields->push(HX_CSTRING("method"));
	outFields->push(HX_CSTRING("verbose"));
	outFields->push(HX_CSTRING("userPassword"));
	outFields->push(HX_CSTRING("url"));
	outFields->push(HX_CSTRING("cookieString"));
	outFields->push(HX_CSTRING("authType"));
	super::__GetFields(outFields);
};

static ::String sStaticFields[] = {
	HX_CSTRING("AUTH_BASIC"),
	HX_CSTRING("AUTH_DIGEST"),
	HX_CSTRING("AUTH_GSSNEGOTIATE"),
	HX_CSTRING("AUTH_NTLM"),
	HX_CSTRING("AUTH_DIGEST_IE"),
	HX_CSTRING("AUTH_DIGEST_ANY"),
	String(null()) };

static ::String sMemberFields[] = {
	HX_CSTRING("nmePrepare"),
	HX_CSTRING("digestAuth"),
	HX_CSTRING("basicAuth"),
	HX_CSTRING("nmeBytes"),
	HX_CSTRING("data"),
	HX_CSTRING("contentType"),
	HX_CSTRING("method"),
	HX_CSTRING("verbose"),
	HX_CSTRING("userPassword"),
	HX_CSTRING("url"),
	HX_CSTRING("cookieString"),
	HX_CSTRING("authType"),
	String(null()) };

static void sMarkStatics(HX_MARK_PARAMS) {
	HX_MARK_MEMBER_NAME(URLRequest_obj::__mClass,"__mClass");
	HX_MARK_MEMBER_NAME(URLRequest_obj::AUTH_BASIC,"AUTH_BASIC");
	HX_MARK_MEMBER_NAME(URLRequest_obj::AUTH_DIGEST,"AUTH_DIGEST");
	HX_MARK_MEMBER_NAME(URLRequest_obj::AUTH_GSSNEGOTIATE,"AUTH_GSSNEGOTIATE");
	HX_MARK_MEMBER_NAME(URLRequest_obj::AUTH_NTLM,"AUTH_NTLM");
	HX_MARK_MEMBER_NAME(URLRequest_obj::AUTH_DIGEST_IE,"AUTH_DIGEST_IE");
	HX_MARK_MEMBER_NAME(URLRequest_obj::AUTH_DIGEST_ANY,"AUTH_DIGEST_ANY");
};

static void sVisitStatics(HX_VISIT_PARAMS) {
	HX_VISIT_MEMBER_NAME(URLRequest_obj::__mClass,"__mClass");
	HX_VISIT_MEMBER_NAME(URLRequest_obj::AUTH_BASIC,"AUTH_BASIC");
	HX_VISIT_MEMBER_NAME(URLRequest_obj::AUTH_DIGEST,"AUTH_DIGEST");
	HX_VISIT_MEMBER_NAME(URLRequest_obj::AUTH_GSSNEGOTIATE,"AUTH_GSSNEGOTIATE");
	HX_VISIT_MEMBER_NAME(URLRequest_obj::AUTH_NTLM,"AUTH_NTLM");
	HX_VISIT_MEMBER_NAME(URLRequest_obj::AUTH_DIGEST_IE,"AUTH_DIGEST_IE");
	HX_VISIT_MEMBER_NAME(URLRequest_obj::AUTH_DIGEST_ANY,"AUTH_DIGEST_ANY");
};

Class URLRequest_obj::__mClass;

void URLRequest_obj::__register()
{
	Static(__mClass) = hx::RegisterClass(HX_CSTRING("neash.net.URLRequest"), hx::TCanCast< URLRequest_obj> ,sStaticFields,sMemberFields,
	&__CreateEmpty, &__Create,
	&super::__SGetClass(), 0, sMarkStatics, sVisitStatics);
}

void URLRequest_obj::__boot()
{
	AUTH_BASIC= (int)1;
	AUTH_DIGEST= (int)2;
	AUTH_GSSNEGOTIATE= (int)4;
	AUTH_NTLM= (int)8;
	AUTH_DIGEST_IE= (int)16;
	AUTH_DIGEST_ANY= (int)15;
}

} // end namespace neash
} // end namespace net

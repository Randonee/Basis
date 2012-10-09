package com.season.basis;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#end

#if android
import com.season.basis.android.RelativeLayout;
import com.season.basis.android.View;
import com.season.basis.android.BaseActivity;
import com.season.basis.android.LayoutParams;
#end


class BasisView
{
	public static inline var TYPE:Int = 0;
	
	public var tag(getTag, setTag) : Int;
	private function setTag( value : Int ):Int{_tag = value; return _tag;}
	private function getTag():Int {return _tag;}
	public var superview(getSuperView, null) : BasisView;
	
	#if android
		public var nativeView(getNativeView, null) : View;
		private function getNativeView():View {return _nativeView;}
		private var _nativeView:View;
	#end
	
	
	private function getSuperView():BasisView 
	{
		#if ios
			var view:BasisView = new BasisView();
			view.tag = cpp_getSuperview(tag);
			return view;
		#end
		
		#if android
			return null;
		#end
	}
	
	public var x(getX, setX) : Float;
	private function getX():Float
	{
		#if ios
			return cpp_call_view_get_x(tag);
		#end
		
		#if android
			return _nativeView.getLeft();
		#end
	}
	private function setX(value:Float):Float
	{
		#if ios
			cpp_call_view_set_x(tag, value);
			return cpp_call_view_get_x(tag);
		#end
		
		#if android
			_nativeView.layout(Std.int(value), _nativeView.getTop(), Std.int(value) + _nativeView.getWidth(), _nativeView.getTop() + _nativeView.getHeight());
			return _nativeView.getLeft();
		#end
	}
	
	public var y(getY, setY) : Float;
	private function getY():Float 
	{
		#if ios
			return cpp_call_view_get_y(tag);
		#end
		
		#if android
			return _nativeView.getTop();
		#end
	}
	private function setY(value:Float):Float
	{
		#if ios
			cpp_call_view_set_y(tag, value);
			return cpp_call_view_get_y(tag);
		#end
		
		#if android
			_nativeView.layout(_nativeView.getLeft(), Std.int(value), _nativeView.getLeft() + _nativeView.getWidth(), Std.int(value) + _nativeView.getTop());
			return _nativeView.getTop();
		#end
	}
	
	public var width(getWidth, setWidth) : Float;
	private function getWidth():Float
	{
		#if ios
			return cpp_call_view_get_width(tag);
		#end
		
		#if android
			return _nativeView.getWidth();
		#end
	}
	private function setWidth(value:Float):Float
	{
		#if ios
			cpp_call_view_set_width(tag, value);
			return cpp_call_view_get_width(tag);
		#end
		
		#if android
			_nativeView.layout(_nativeView.getLeft(), _nativeView.getTop(), Std.int(value), _nativeView.getTop() + _nativeView.getHeight());
			return _nativeView.getWidth();
		#end
	}
	
	public var height(getHeight, setHeight) : Float;
	private function getHeight():Float
	{
		#if ios
			return cpp_call_view_get_height(tag);
		#end
		
		#if android
			return _nativeView.getHeight();
		#end
	}
	private function setHeight(value:Float):Float
	{
		#if ios
			cpp_call_view_set_height(tag, value);
			return cpp_call_view_get_height(tag);
		#end
		
		#if android
			_nativeView.layout(_nativeView.getLeft(), _nativeView.getTop(), _nativeView.getWidth(), Std.int(value));
			return _nativeView.getHeight();
		#end
	}
	
	private var _tag:Int;
	
	public function new()
	{
		init();
	}
	
	private function init():Void
	{
		#if ios
			_tag = BasisViewManager.createView(TYPE);
		#elseif android
			_nativeView = new RelativeLayout(BaseActivity.getInstance());
		#end
	}
	
	public function addEventListener(type:String, handler:BasisView->String->Void):Void
	{
		BasisViewManager.addEventListener(type, this, handler);
	}
	
	public function addSubview(view:BasisView):Void
	{
		#if ios
			cpp_addSubview(_tag, view.tag);
		#elseif android
			cast(_nativeView, RelativeLayout).addView(view.nativeView);
		#end
	}
	
	public function removeSubview(view:BasisView):Void
	{
		#if ios
			cpp_removeSubview(_tag, view.tag);
		#elseif android
			//nativeView
		#end
	}
	
	#if ios
		private static var cpp_addSubview = Lib.load ("basis", "view_addSubview", 2);
		private static var cpp_getSuperview = Lib.load ("basis", "view_getSuperview", 1);
		private static var cpp_removeSubview = Lib.load ("basis", "view_removeSubview", 2);
		
		private static var cpp_call_view_set_x = Lib.load ("basis", "view_setFrameX", 2);
		private static var cpp_call_view_get_x = Lib.load ("basis", "view_getFrameX", 1);
		private static var cpp_call_view_set_y = Lib.load ("basis", "view_setFrameY", 2);
		private static var cpp_call_view_get_y = Lib.load ("basis", "view_getFrameY", 1);
		private static var cpp_call_view_set_width = Lib.load ("basis", "view_setFrameWidth", 2);
		private static var cpp_call_view_get_width = Lib.load ("basis", "view_getFrameWidth", 1);
		private static var cpp_call_view_set_height = Lib.load ("basis", "view_setFrameHeight", 2);
		private static var cpp_call_view_get_height = Lib.load ("basis", "view_getFrameHeight", 1);
	#end
	
}
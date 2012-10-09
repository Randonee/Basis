package com.season.basis;

#if ios
import cpp.Lib;
#elseif android
import com.season.basis.android.Log;
#end

class Util
{
	
	static public function trace(v : Dynamic, ?inf : haxe.PosInfos):Void
	{
		#if ios
		cpp_basis_log(Std.string(v));
		#elseif android
			Log.w("TRACE:", Std.string(v));
		#end
	}
	
	static public function enableTrace():Void
	{
		haxe.Log.trace = trace;
	}
	
	
	#if ios
	private static var cpp_basis_log = Lib.load ("basis", "basis_log", 1);
	#end
	
}
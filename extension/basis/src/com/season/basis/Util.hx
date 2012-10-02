package com.season.basis;

#if cpp
import cpp.Lib;
#elseif neko
import neko.Lib;
#else
import nme.Lib;
#end

class Util
{
	
	static public function trace(v : Dynamic, ?inf : haxe.PosInfos):Void
	{
		cpp_basis_log(Std.string(v));
	}
	
	static public function enableTrace():Void
	{
		haxe.Log.trace = trace;
	}
	
	
	#if cpp
	private static var cpp_basis_log = Lib.load ("basis", "basis_log", 1);
	#end
	
}
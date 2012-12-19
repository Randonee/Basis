package com.basis.example;

import com.season.basis.Util;
#if ios
	import com.season.basis.ios.ViewManager;
	import com.basis.example.views.ios.MainView;
#elseif android
	//import com.basis.example.views.android.MainView;
#end

class Main
{
	public static function main()
	{
		Util.enableTrace();
		trace("ddd");
		#if ios
			ViewManager.addToRootView(new MainView());
		#elseif android
		//	new MainView();
		#end
	}
}
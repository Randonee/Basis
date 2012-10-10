package com.basis.example;



import com.season.basis.Util;
#if ios
	import com.season.basis.ios.ViewManager;
	import com.basis.example.views.ComponentDisplayView;
#elseif android
	import com.season.basis.android.BaseActivity;
#end

class Main
{
	public static function main()
	{
		Util.enableTrace();
		
		#if ios
			ViewManager.addToRootView(new ComponentDisplayView());
		#elseif android
			BaseActivity.getInstance().setContentView(r.Layout.main);
		#end
	}
}
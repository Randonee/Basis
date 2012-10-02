package com.basis.example;

import com.season.basis.ViewManager;
import com.basis.example.views.ComponentDisplayView;

class Main
{
	public static function main()
	{
		com.season.basis.Util.enableTrace();
		ViewManager.addToRootView(new ComponentDisplayView());
	}
}
package com.basis.example;

import com.season.basis.ViewManager;
import com.basis.example.views.ComponentDisplayView;

class Main
{
	public static function main()
	{
		ViewManager.addToRootView(new ComponentDisplayView());
	}
}
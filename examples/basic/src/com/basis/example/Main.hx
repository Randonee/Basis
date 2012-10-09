package com.basis.example;

import com.season.basis.BasisViewManager;
import com.basis.example.views.ComponentDisplayView;

import com.season.basis.Util;

class Main
{
	public static function main()
	{
		Util.enableTrace();
		BasisViewManager.addToRootView(new ComponentDisplayView());
	}
}
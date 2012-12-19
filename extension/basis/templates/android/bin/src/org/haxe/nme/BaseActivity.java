package org.haxe.nme;

import android.os.Bundle;
import android.app.Activity;
import android.content.Context;

public class BaseActivity extends Activity
{
	static BaseActivity activity;
	static Context context;
	
	
	public static Context getContext()
	{
		return context;
	}
	
	public static BaseActivity getInstance()
	{
		return activity;
	}

	
	protected void onCreate(Bundle state)
	{
		super.onCreate(state);
		
		activity = this;
		context = this;
	}
}


package com.basis.example.views.android;

import com.season.basis.android.BaseActivity;
import com.season.basis.android.EditText;
import com.season.basis.android.TextView;
import com.season.basis.android.Button;

class MainView
{
	private var _inputLabel:TextView;
	private var _inputField:EditText;
	private var _outputField:EditText;
	private var _outputLabel:TextView;
	private var _sampleButton:Button;
	
	public function new()
	{
		BaseActivity.getInstance().setContentView(r.Layout.main);
		_inputField = cast(BaseActivity.getInstance().findViewById(r.Id.edit_message), EditText);
		_inputField.setText("Setting Text");
	}
	
}
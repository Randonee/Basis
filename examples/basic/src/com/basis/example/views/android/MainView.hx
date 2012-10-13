package com.basis.example.views.android;

import com.season.basis.android.app.BaseActivity;
import com.season.basis.android.widget.EditText;
import com.season.basis.android.widget.TextView;
import com.season.basis.android.widget.Button;
import com.season.basis.android.view.View;
import com.season.basis.android.view.KeyEvent;

class MainView implements OnKeyListener, implements OnClickListener
{
	private var _inputLabel:TextView;
	private var _inputField:EditText;
	private var _outputField:EditText;
	private var _outputLabel:TextView;
	private var _sampleButton:Button;
	
	public function new()
	{
		BaseActivity.getInstance().setContentView(r.Layout.main);
		_inputField = cast(BaseActivity.getInstance().findViewById(r.Id.inputField), EditText);
		_outputField = cast(BaseActivity.getInstance().findViewById(r.Id.outputField), EditText);
		_sampleButton = cast(BaseActivity.getInstance().findViewById(r.Id.sampleButton), Button);
		
		_inputField.setOnKeyListener(this);
		_sampleButton.setOnClickListener(this);
		
		
	}
	
	public function onClick(v:View):Void
	{
		_inputField.setText("Button Clicked");
	}
	
	public function onKey(v:View, actionId:Int, event:KeyEvent):Bool
	{
		_outputField.setText("oo");
		return true;
	}
	
}
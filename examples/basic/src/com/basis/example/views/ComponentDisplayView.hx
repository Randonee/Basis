package com.basis.example.views;

import com.season.basis.BasisView;
import com.season.basis.ViewManager;
import com.season.basis.Label;
import com.season.basis.TextField;
import com.season.basis.Button;
import com.season.basis.EventTypes;

class ComponentDisplayView extends BasisView
{
	private var _inputLabel:Label;
	private var _inputField:TextField;
	private var _outputField:TextField;
	private var _outputLabel:Label;
	private var _sampleButton:Button;
	
	public function new()
	{
		super();
		
		_inputLabel = new Label();
		addSubview(_inputLabel);
		_inputLabel.text  = "Input";
		_inputLabel.height = 20;
		_inputLabel.x = 5;
		
		_inputField= new TextField();
		addSubview(_inputField);
		_inputField.y = 30;
		_inputField.x = 5;
		_inputField.addEventListener(EventTypes.TEXTFIELD_TEXT_DID_CHANGE, onInputChanged);
		
		_outputLabel = new Label();
		addSubview(_outputLabel);
		_outputLabel.text  = "Output";
		_outputLabel.height = 20;
		_outputLabel.x = 5;
		_outputLabel.y = 80;
		
		_outputField= new TextField();
		addSubview(_outputField);
		_outputField.y = 110;
		_outputField.x = 5;
		
		_sampleButton = new Button();
		_sampleButton.width = 70;
		_sampleButton.height = 30;
		_sampleButton.y = 160;
		_sampleButton.x = 50;
		_sampleButton.setLabel("Button");
		_sampleButton.addEventListener(EventTypes.CONTROL_TOUCH_UP_INSIDE, onButtonClick);
		
		
		addSubview(_sampleButton);
	}
	
	private function onButtonClick(tag:Int, type):Void
	{
		_inputField.text = "Button Clicked";
	}
	
	private function onInputChanged(tag:Int, type):Void
	{
		_outputField.text = _inputField.text;
	}
}
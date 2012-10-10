package com.basis.example.views;

import com.season.basis.ios.ui.UIView;
import com.season.basis.ios.ui.UILabel;
import com.season.basis.ios.ui.UITextField;
import com.season.basis.ios.ui.UIButton;
import com.season.basis.ios.EventTypes;
import com.season.basis.ios.mapkit.MKMapView;

class ComponentDisplayView extends UIView
{
	private var _inputLabel:UILabel;
	private var _inputField:UITextField;
	private var _outputField:UITextField;
	private var _outputLabel:UILabel;
	private var _sampleButton:UIButton;
	private var _mapView:MKMapView;
	
	public function new()
	{
		super();
		this.width = 300;
		this.height = 400;
		
		_inputLabel = new UILabel();
		addSubview(_inputLabel);
		_inputLabel.text  = "Input";
		_inputLabel.height = 20;
		_inputLabel.x = 5;
		
		_inputField= new UITextField();
		addSubview(_inputField);
		_inputField.y = 30;
		_inputField.x = 5;
		_inputField.addEventListener(EventTypes.TEXTFIELD_TEXT_DID_CHANGE, onInputChanged);
		
		_outputLabel = new UILabel();
		addSubview(_outputLabel);
		_outputLabel.text  = "Output";
		_outputLabel.height = 20;
		_outputLabel.x = 5;
		_outputLabel.y = 80;
		
		_outputField= new UITextField();
		addSubview(_outputField);
		_outputField.y = 110;
		_outputField.x = 5;
		
		_sampleButton = new UIButton();
		_sampleButton.width = 70;
		_sampleButton.height = 30;
		_sampleButton.y = 160;
		_sampleButton.x = 50;
		_sampleButton.setLabel("Button");
		_sampleButton.addEventListener(EventTypes.CONTROL_TOUCH_UP_INSIDE, onButtonClick);
		addSubview(_sampleButton);
		
		this.width = 300;
		this.height = 400;
		
		_mapView = new MKMapView();
		_mapView.width = 300;
		_mapView.height = 250;
		_mapView.x = 10;
		_mapView.y = 200;
		addSubview(_mapView);
	}
	
	private function onButtonClick(view:UIView, type):Void
	{
		_inputField.text = "Button Clicked";
	}
	
	private function onInputChanged(view:UIView, type):Void
	{
		_outputField.text = _inputField.text;
	}
}
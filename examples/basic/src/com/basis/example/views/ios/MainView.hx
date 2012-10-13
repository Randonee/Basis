package com.basis.example.views.ios;
import com.season.basis.ios.ViewBase;
import com.season.basis.ios.ui.UIView;
import com.season.basis.ios.ui.UILabel;
import com.season.basis.ios.ui.UITextField;
import com.season.basis.ios.ui.UIButton;
import com.season.basis.ios.EventTypes;
import com.season.basis.ios.mapkit.MKMapView;

class MainView extends UIView
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
	//	this.width = 300;
		//this.height = 400;
		
		_inputLabel = new UILabel();
		addSubview(_inputLabel);
		_inputLabel.text  = "Input";
		
		_inputLabel.setFrame2([5,0,200,30]);
		
		_inputField= new UITextField();
		addSubview(_inputField);
		_inputField.setFrame2([5,30,200,30]);
		_inputField.addEventListener(EventTypes.TEXTFIELD_TEXT_DID_CHANGE, onInputChanged);
		
		_outputLabel = new UILabel();
		addSubview(_outputLabel);
		_outputLabel.text  = "Output";
		_outputLabel.setFrame2([5,80,200,30]);
		
		_outputField= new UITextField();
		addSubview(_outputField);
		_outputField.setFrame2([5,110,200,30]);
		
		_sampleButton = new UIButton();
		_sampleButton.setFrame2([50,230,100,30]);
		_sampleButton.setTitle("ddd", 0);
		_sampleButton.addEventListener(EventTypes.CONTROL_TOUCH_UP_INSIDE, onButtonClick);
		addSubview(_sampleButton);
		
/*		
		_mapView = new MKMapView();
		_mapView.width = 300;
		_mapView.height = 250;
		_mapView.x = 10;
		_mapView.y = 200;
		addSubview(_mapView);
		*/
	}
	
	private function onButtonClick(view:ViewBase, type):Void
	{
		_inputField.text = "Button Clicked";
	}
	
	private function onInputChanged(view:ViewBase, type):Void
	{
		_outputField.text = _inputField.text;
	}
}
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
		this.frame = [0.0 ,0,400,400];
		
		_inputLabel = new UILabel();
		addSubview(_inputLabel);
		_inputLabel.text  = "Input";
		
		_inputLabel.frame = [5.0,0,200,30];
		
		_inputField= new UITextField();
		addSubview(_inputField);
		_inputField.frame = [5.0,30,200,30];
		_inputField.addEventListener(EventTypes.TEXTFIELD_TEXT_DID_CHANGE, onInputChanged);
		
		_outputLabel = new UILabel();
		addSubview(_outputLabel);
		_outputLabel.text  = "Output";
		_outputLabel.frame = [5.0,80,200,30];
		
		_outputField= new UITextField();
		addSubview(_outputField);
		_outputField.frame = [5.0,110,200,30];
		
		_sampleButton = new UIButton();
		_sampleButton.frame = [50.0,160,100,30];
		_sampleButton.setTitle("Button", 0);
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
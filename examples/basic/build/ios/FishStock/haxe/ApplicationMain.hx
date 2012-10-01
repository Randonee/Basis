class ApplicationMain
{
	
	public static function main()
	{
		nme.Lib.setPackage("SeasonSoftware", "FishStock", "com.basis.example", "1.0.0");
		
		
		nme.display.Stage.shouldRotateInterface = function(orientation:Int):Bool
		{
			
			if (orientation == nme.display.Stage.OrientationPortrait || orientation == nme.display.Stage.OrientationPortraitUpsideDown)
			{
				return true;
			}
			return false;
			
		}
		
		nme.Lib.create(function()
			{
				if (640 == 0 && 960 == 0)
				{
					nme.Lib.current.stage.align = nme.display.StageAlign.TOP_LEFT;
					nme.Lib.current.stage.scaleMode = nme.display.StageScaleMode.NO_SCALE;
				}
				
				var hasMain = false;
				
				for (methodName in Type.getClassFields(com.basis.example.Main))
				{
					if (methodName == "main")
					{
						hasMain = true;
						break;
					}
				}
				
				if (hasMain)
				{
					Reflect.callMethod (com.basis.example.Main, Reflect.field (com.basis.example.Main, "main"), []);
				}
				else
				{
					nme.Lib.current.addChild(cast (Type.createInstance(com.basis.example.Main, []), nme.display.DisplayObject));	
				}
			},
			640, 960,
			30,
			0xffffff,
			(true ? nme.Lib.HARDWARE : 0) |
			(true ? nme.Lib.RESIZABLE : 0) |
			(1 == 4 ? nme.Lib.HW_AA_HIRES : 0) |
			(1 == 2 ? nme.Lib.HW_AA : 0),
			"FishStock"
		);
		
	}
	
	
	public static function getAsset(inName:String):Dynamic
	{
		
		return null;
	}
	
}
package basis;

class Main
{
	static public function main():Void
	{
		try
		{
			new BuildTool().build();
		}
		catch(error:String)
		{
			neko.Lib.println(error);
		}
	}
}
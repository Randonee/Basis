package basis;

class Main
{
	static public function main():Void
	{
		new BuildTool(Sys.args()[0]).build();
	}
}
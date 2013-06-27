package com.globo.sitio.mario
{
	import flash.display.Sprite;
	
	import starling.core.Starling;
	
	[SWF(width="890", height="500", frameRate="60", backgroundColor="0X333333")]
	public class Main extends flash.display.Sprite
	{
		private var starling:Starling;
		
		public function Main()
		{
			var movi:movieMonitor = new movieMonitor();
			this.addChild(movi);
			
			initialize();
		}
		
		public function initialize():void{
			this.starling = new Starling(MarioGame,this.stage);
			this.starling.start();
		}
		
	}
}
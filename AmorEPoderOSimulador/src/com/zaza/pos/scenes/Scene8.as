package com.zaza.pos.scenes
{
	import flash.geom.Point;

	public class Scene8 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var scene8Asset:Scene8Asset;
		
		public function Scene8()
		{
			super(SceneName.SCREEN_9, SceneName.SCREEN_7);
		}
		
		override public function init():void
		{
			if(!scene8Asset)
				scene8Asset = new Scene8Asset();
			
			this.addChild(scene8Asset);
			makeTweenOnContainer ( scene8Asset );
			
			super.init();
		}
	}
}
package com.zaza.pos.scenes
{
	import flash.geom.Point;

	public class Scene1 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var scene1Asset:Scene1Asset;
		
		public function Scene1()
		{
			super(2, -1);
		}
		
		override public function init():void
		{
			if(!scene1Asset)
				scene1Asset = new Scene1Asset();
			
			this.addChild(scene1Asset);
			makeTweenOnContainer ( scene1Asset );
			
			super.init();
		}
	}
}
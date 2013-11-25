package com.zaza.pos.scenes
{
	import flash.geom.Point;

	public class Scene4 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var scene4Asset:Scene4Asset;
		
		public function Scene4()
		{
			super(SceneName.SCREEN_5, SceneName.SCREEN_3);
		}
		
		override public function init():void
		{
			if(!scene4Asset)
				scene4Asset = new Scene4Asset();
			
			this.addChild( scene4Asset );
			makeTweenOnContainer ( scene4Asset );
			super.init();
		}
	}
}
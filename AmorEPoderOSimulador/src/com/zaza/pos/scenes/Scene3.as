package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	import flash.geom.Point;

	public class Scene3 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var scene3Asset:Scene3Asset;
		
		public function Scene3()
		{
			super(SceneName.SCREEN_4, SceneName.SCREEN_2);
		}
		
		override public function init():void
		{
			if(!scene3Asset)
				scene3Asset = new Scene3Asset();
			
			this.addChild( scene3Asset );
			makeTweenOnContainer ( scene3Asset );
			scene3Asset.mc_tween.name1.text = Names.name1.toUpperCase();
			
			super.init();
		}
	}
}
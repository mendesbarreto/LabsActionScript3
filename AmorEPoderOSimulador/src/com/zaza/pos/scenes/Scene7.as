package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene7 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var scene7Asset:Scene7Asset;
		
		public function Scene7()
		{
			super(SceneName.SCREEN_8, SceneName.SCREEN_6);
		}
		
		override public function init():void
		{
			if(!scene7Asset)
				scene7Asset = new Scene7Asset();
			
			this.addChild(scene7Asset);
			makeTweenOnContainer ( scene7Asset );
			
			scene7Asset.mc_tween.name2.text = Names.name2.toUpperCase();
			
			super.init();
		}
	}
}
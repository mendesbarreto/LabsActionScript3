package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene6 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var scene6Asset:Scene6Asset;
		
		public function Scene6()
		{
			super( SceneName.SCREEN_7, SceneName.SCREEN_6 );
		}
		
		override public function init():void
		{
			if(!scene6Asset)
				scene6Asset = new Scene6Asset();
			
			this.addChild( scene6Asset );
			
			scene6Asset.mc_tween.name1.text = Names.name1.toUpperCase() + ",";
			
			makeTweenOnContainer ( scene6Asset );
			super.init();
		}
	}
}
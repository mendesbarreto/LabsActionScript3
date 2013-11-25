package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene5 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var scene5Asset:Scene5Asset;
		
		public function Scene5()
		{
			super( SceneName.SCREEN_6, SceneName.SCREEN_4 );
		}
		
		override public function init():void
		{
			if(!scene5Asset)
				scene5Asset = new Scene5Asset();
			
			this.addChild( scene5Asset );
			
			scene5Asset.mc_tween.name1.text = Names.name1.toUpperCase() + " EXERCE O";
			
			makeTweenOnContainer ( scene5Asset );
			super.init();
		}
	}
}
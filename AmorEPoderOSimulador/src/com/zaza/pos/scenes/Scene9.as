package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene9 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var scene9Asset:Scene9Asset;
		
		public function Scene9()
		{
			super(SceneName.SCREEN_10, SceneName.SCREEN_8);
		}
		
		override public function init():void
		{
			if(!scene9Asset)
				scene9Asset = new Scene9Asset();
			
			this.addChild( scene9Asset );
			makeTweenOnContainer ( scene9Asset );
			
			scene9Asset.mc_tween.name2.text = Names.name2.toUpperCase() + " EXERCE O";
			
			super.init();
		}
	}
}
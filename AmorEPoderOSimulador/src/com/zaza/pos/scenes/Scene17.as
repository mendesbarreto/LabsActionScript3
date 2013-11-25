package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene17 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene17Asset;
		
		public function Scene17()
		{
			super(SceneName.SCREEN_18, SceneName.SCREEN_16);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene17Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name4.text = Names.name4.toUpperCase();
			
			super.init();
		}
	}
}
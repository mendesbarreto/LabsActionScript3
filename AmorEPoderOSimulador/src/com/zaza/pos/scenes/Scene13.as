package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene13 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene13Asset;
		
		public function Scene13()
		{
			super(SceneName.SCREEN_14, SceneName.SCREEN_12);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene13Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name3.text = Names.name3.toUpperCase();
			
			super.init();
		}
	}
}
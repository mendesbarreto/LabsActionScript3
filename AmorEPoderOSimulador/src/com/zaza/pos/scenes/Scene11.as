package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene11 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene11Asset;
		
		public function Scene11()
		{
			super(SceneName.SCREEN_12, SceneName.SCREEN_10);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene11Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name3.text = Names.name3.toUpperCase();
			
			super.init();
		}
	}
}
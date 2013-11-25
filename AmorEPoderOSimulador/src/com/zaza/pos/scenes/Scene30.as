package com.zaza.pos.scenes
{
	import flash.geom.Point;

	public class Scene30 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene30Asset;
		
		public function Scene30()
		{
			super(-1, SceneName.SCREEN_29);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene30Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			super.init();
		}
	}
}
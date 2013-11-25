package com.zaza.pos.scenes
{
	import flash.geom.Point;

	public class Scene19 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene19Asset;
		
		public function Scene19()
		{
			super(SceneName.SCREEN_20, SceneName.SCREEN_18);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene19Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			super.init();
		}
	}
}
package com.zaza.pos.scenes
{
	import flash.geom.Point;

	public class Scene20 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene20Asset;
		
		public function Scene20()
		{
			super(SceneName.SCREEN_21, SceneName.SCREEN_19);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene20Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			super.init();
		}
	}
}
 package com.zaza.pos.scenes
{
	import flash.geom.Point;

	public class Scene25 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene25Asset;
		
		public function Scene25()
		{
			super(SceneName.SCREEN_26, SceneName.SCREEN_24);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene25Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			super.init();
		}
	}
}
package com.zaza.pos.scenes
{
	import flash.geom.Point;

	public class Scene22 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene22Asset;
		
		public function Scene22()
		{
			super(SceneName.SCREEN_23, SceneName.SCREEN_21);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene22Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			super.init();
		}
	}
}
package com.zaza.pos.scenes
{
	import flash.geom.Point;

	public class Scene28 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene28Asset;
		
		public function Scene28()
		{
			super(SceneName.SCREEN_29, SceneName.SCREEN_27);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene28Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			super.init();
		}
	}
}
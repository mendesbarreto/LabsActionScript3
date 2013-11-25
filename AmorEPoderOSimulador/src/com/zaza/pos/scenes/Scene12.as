package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene12 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene12Asset;
		
		public function Scene12()
		{
			super(SceneName.SCREEN_13, SceneName.SCREEN_11);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene12Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			super.init();
		}
	}
}
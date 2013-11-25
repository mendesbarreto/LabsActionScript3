package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene16 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene16Asset;
		
		public function Scene16()
		{
			super(SceneName.SCREEN_17, SceneName.SCREEN_15);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene16Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			super.init();
		}
	}
}
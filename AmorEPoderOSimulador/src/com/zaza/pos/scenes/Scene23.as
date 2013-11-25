package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene23 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene23Asset;
		
		public function Scene23()
		{
			super(SceneName.SCREEN_25, SceneName.SCREEN_22);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene23Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name5.text = Names.name5.toUpperCase() + ",";
			
			super.init();
		}
	}
}
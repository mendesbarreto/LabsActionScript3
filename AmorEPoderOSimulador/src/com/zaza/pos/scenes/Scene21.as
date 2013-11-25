package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene21 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene21Asset;
		
		public function Scene21()
		{
			super(SceneName.SCREEN_22, SceneName.SCREEN_20);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene21Asset();

			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			sceneAsset.mc_tween.name5.text = Names.name5.toUpperCase() + " não vê relação";
			
			super.init();
		}
	}
}
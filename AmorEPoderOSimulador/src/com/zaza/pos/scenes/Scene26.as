 package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene26 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene26Asset;
		
		public function Scene26()
		{
			super(SceneName.SCREEN_27, SceneName.SCREEN_25);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene26Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name6.text = Names.name6.toUpperCase() + ",";
			
			super.init();
		}
	}
}
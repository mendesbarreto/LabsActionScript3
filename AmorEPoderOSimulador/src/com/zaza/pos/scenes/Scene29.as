package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene29 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene29Asset;
		
		public function Scene29()
		{
			super(SceneName.SCREEN_30, SceneName.SCREEN_28);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene29Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name7.text = Names.name7.toUpperCase() + ",";
			
			super.init();
		}
	}
}
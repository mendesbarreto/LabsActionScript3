package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene15 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene15Asset;
		
		public function Scene15()
		{
			super(SceneName.SCREEN_16, SceneName.SCREEN_14);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene15Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name4.text = Names.name4.toUpperCase();
			
			super.init();
		}
	}
}
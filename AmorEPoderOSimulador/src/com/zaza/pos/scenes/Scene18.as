package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene18 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene18Asset;
		
		public function Scene18()
		{
			super(SceneName.SCREEN_19, SceneName.SCREEN_17);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene18Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name4.text = Names.name4.toUpperCase() + "!";
			
			super.init();
		}
	}
}
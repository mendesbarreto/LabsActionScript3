package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene10 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene10Asset;
		
		public function Scene10()
		{
			super(SceneName.SCREEN_11, SceneName.SCREEN_9);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene10Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name2.text = Names.name2.toUpperCase() + "!	";
			
			super.init();
		}
	}
}
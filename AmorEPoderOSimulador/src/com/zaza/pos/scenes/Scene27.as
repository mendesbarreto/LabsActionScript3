package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene27 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene27Asset;
		
		public function Scene27()
		{
			super(SceneName.SCREEN_28, SceneName.SCREEN_26);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene27Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name7.text = Names.name7.toUpperCase() + " exerce a relação";
			
			super.init();
		}
	}
}
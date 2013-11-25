package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;

	public class Scene14 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene14Asset;
		
		public function Scene14()
		{
			super(SceneName.SCREEN_15, SceneName.SCREEN_13);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene14Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name3.text = Names.name3.toUpperCase() + " ,";
			
			super.init();
		}
	}
}
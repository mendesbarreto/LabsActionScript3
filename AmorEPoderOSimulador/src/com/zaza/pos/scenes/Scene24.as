package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;
	import flash.text.TextFormat;

	public class Scene24 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene24Asset;
		
		public function Scene24()
		{
			super(SceneName.SCREEN_25, SceneName.SCREEN_23);
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene24Asset();
			
			this.addChild( sceneAsset );
			makeTweenOnContainer ( sceneAsset );
			
			sceneAsset.mc_tween.name6.text = Names.name6.toUpperCase() + " reconhece a relação";
			
			var format1:TextFormat = sceneAsset.mc_tween.name6.getTextFormat(  0 , Names.name6.length  );
			format1.color = 0xFFFFFF;
			sceneAsset.mc_tween.name6.setTextFormat(format1, 0, Names.name6.length );
			
			super.init();
		}
	}
}
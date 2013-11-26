package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.geom.Point;
	import flash.text.TextFormat;

	public class Scene5 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var scene5Asset:Scene5Asset;
		
		public function Scene5()
		{
			super( SceneName.SCREEN_6, SceneName.SCREEN_4 );
		}
		
		override public function init():void
		{
			if(!scene5Asset)
				scene5Asset = new Scene5Asset();
			
			this.addChild( scene5Asset );
			
			

			
			scene5Asset.mc_tween.name1.text = Names.name1.toUpperCase() + " EXERCE O";
			var format1:TextFormat = scene5Asset.mc_tween.name1.getTextFormat(  Names.name1.length , -1 );
			format1.color = 0xFFFFFF;
			scene5Asset.mc_tween.name1.setTextFormat(format1, Names.name1.length, scene5Asset.mc_tween.name1.length );
			
			
			makeTweenOnContainer ( scene5Asset );
			super.init();
		}
	}
}
package com.zaza.pos.scenes
{
	import com.zaza.pos.Names;
	
	import flash.events.MouseEvent;
	import flash.filters.GlowFilter;
	import flash.geom.Point;

	public class Scene2 extends Scene
	{
		public var posCoracao:Point;
		public var texto:Point;
		public var sceneAsset:Scene2Asset;
		
		public function Scene2()
		{
			super( SceneName.SCREEN_3,  SceneName.SCREEN_1);
			this.buttonMode = false;
			this.mouseChildren = true;
		}
		
		override public function init():void
		{
			if(!sceneAsset)
				sceneAsset = new Scene2Asset();
			
			this.addChild(sceneAsset);
			makeTweenOnContainer ( sceneAsset );
			
			this.sceneAsset.btPronto_tween.buttonMode = true;
			this.sceneAsset.btPronto_tween.addEventListener( MouseEvent.CLICK , onMouseClickHandler );
		}
		
		override public function nextScene():void
		{
			
		}
		
		override public function stop():void
		{
			this.sceneAsset.btPronto_tween.removeEventListener( MouseEvent.CLICK , onMouseClickHandler );
			super.stop();
		}
		
		override public function update():void
		{
			/*if ( this.sceneAsset.name1_tween.texto.text == "" )
			{
				if(this.sceneAsset.name1_tween.filters.length == 0)
					this.sceneAsset.name1_tween.filters = [new GlowFilter(0xFF0000, 1, 15, 15, 2, 1, true)];
			}
			else
				this.sceneAsset.name1_tween.filters = [];
			
			if ( this.sceneAsset.name2_tween.texto.text == "" )
			{
				if(this.sceneAsset.name2_tween.filters.length == 0)
					this.sceneAsset.name2_tween.filters = [new GlowFilter(0xFF0000, 3, 15, 15, 2, 1, true)];
			}
			else
				this.sceneAsset.name2_tween.filters = [];
			
			
			if ( this.sceneAsset.name3_tween.texto.text == "" )
			{
				if(this.sceneAsset.name3_tween.filters.length == 0)
					this.sceneAsset.name3_tween.filters = [new GlowFilter(0xFF0000, 3, 15, 15, 2, 1, true)];
			}
			else
				this.sceneAsset.name3_tween.filters = [];
			
			if ( this.sceneAsset.name4_tween.texto.text == "" )
			{
				if(this.sceneAsset.name4_tween.filters.length == 0)
					this.sceneAsset.name4_tween.filters = [new GlowFilter(0xFF0000, 3, 15, 15, 2, 1, true)];
			}
			else
				this.sceneAsset.name4_tween.filters = [];
			
			if ( this.sceneAsset.name5_tween.texto.text == "" )
			{
				if(this.sceneAsset.name5_tween.filters.length == 0)
					this.sceneAsset.name5_tween.filters = [new GlowFilter(0xFF0000, 3, 15, 15, 2, 1, true)];
			}
			else
				this.sceneAsset.name5_tween.filters = [];
			
			if ( this.sceneAsset.name6_tween.texto.text == "" )
			{
				if(this.sceneAsset.name6_tween.filters.length == 0)
					this.sceneAsset.name6_tween.filters = [new GlowFilter(0xFF0000, 3, 15, 15, 2, 1, true)];
			}
			else
				this.sceneAsset.name6_tween.filters = [];
			
			if ( this.sceneAsset.name7_tween.texto.text == "" )
			{
				if(this.sceneAsset.name7_tween.filters.length == 0)
					this.sceneAsset.name7_tween.filters = [new GlowFilter(0xFF0000, 3, 15, 15, 2, 1, true)];
			}
			else
				this.sceneAsset.name7_tween.filters = [];*/
		}
		
		override protected function onMouseClickHandler(event:MouseEvent):void
		{
			if(	this.sceneAsset.name1_tween.texto.text != "" &&
				this.sceneAsset.name2_tween.texto.text != "" &&
				this.sceneAsset.name3_tween.texto.text != "" &&
				this.sceneAsset.name4_tween.texto.text != "" &&
				this.sceneAsset.name5_tween.texto.text != "" &&
				this.sceneAsset.name6_tween.texto.text != "" &&
				this.sceneAsset.name7_tween.texto.text != "" )
			{
				Names.name1 = this.sceneAsset.name1_tween.texto.text;
				Names.name2 = this.sceneAsset.name2_tween.texto.text;
				Names.name3 = this.sceneAsset.name3_tween.texto.text;
				Names.name4 = this.sceneAsset.name4_tween.texto.text;
				Names.name5 = this.sceneAsset.name5_tween.texto.text;
				Names.name6 = this.sceneAsset.name6_tween.texto.text;
				Names.name7 = this.sceneAsset.name7_tween.texto.text;
				
				super.nextScene();
			}
		}
	}
}
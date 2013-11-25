package com.zaza.pos
{
	import com.greensock.TweenLite;
	import com.greensock.easing.Back;
	import com.zaza.pos.scenes.Scene;
	
	import flash.display.Sprite;
	import flash.events.KeyboardEvent;
	import flash.ui.Keyboard;
	import flash.utils.Dictionary;

	public class SceneManager
	{
		private var currentScene:Scene;
		private var newScene:Scene;
		
		private var sceneslist:Dictionary = new Dictionary();
		
		private var container:Sprite;
		
		public function SceneManager(displayContainer:Sprite)
		{
			container = displayContainer;
			container.stage.addEventListener( KeyboardEvent.KEY_DOWN , onKeyDown );
		}
		
		protected function onKeyDown(event:KeyboardEvent):void
		{
			if ( event.keyCode == Keyboard.RIGHT )
				currentScene.nextScene();
			else if (event.keyCode == Keyboard.LEFT )
				currentScene.previousScene();
		}
		
		public function addScene(name:int, scene:Scene):void  
		{
			if(scene)
			{
				sceneslist[name] = scene;
				scene.onChangeSceneRequest.add( gotoScene );
			}
		}
		
		public function gotoScene(name:int):void
		{
			var scene:Scene = sceneslist[name];
			if ( scene )
			{
				newScene = scene;	
			}else
			{
				trace ( "A CENA " + name + "NAO EXISE" );
			}
		}
		
		public function update():void
		{
			if ( newScene )
			{
				
				if(currentScene)
				{
					currentScene.stop();
					TweenLite.to( currentScene ,Scene.DEFAULT_TWEEN_DURATION , {x:currentScene.width + Scene.STAGE_WIDTH , onComplete:removeTarget , onCompleteParams:[currentScene], ease:Back.easeInOut } );
				}
				
				currentScene = newScene;
				currentScene.init();
				
				this.container.addChild( currentScene );
				newScene = null;
			}
			
			
			currentScene.update();
		}
		
		public function removeTarget(sp:Sprite):void
		{
			if ( this.container.contains( sp ) )
				this.container.removeChild( sp );
			
			sp.x = 0;
			sp.y = 0;
		}
		
		
		public function destroy():void
		{
			
		}
		
	}
}
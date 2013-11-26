package com.zaza.pos.scenes
{
	import com.greensock.TweenLite;
	import com.greensock.easing.Back;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	
	import org.osflash.signals.Signal;

	public class Scene extends Sprite
	{
		
		public static const STAGE_WIDTH:Number = 1072;
		public static const STAGE_HEIGHT:Number = 804;
		
		public var onChangeSceneRequest:Signal = new Signal();
		protected var asset:Sprite;
		private var isChangeScene:Boolean = false;;
		
		public var nextSceneName:int = 0;
		public var previousSceneName:int = 0;
		
		private var isReady:Boolean = false;
		
		public static const DEFAULT_TWEEN_DURATION:Number = 0.8;
		
		public function Scene(nextScene:int = 0, previousScene:int = -1)
		{
			this.mouseChildren = false;
			this.buttonMode = true;
			
			nextSceneName = nextScene;
			previousSceneName = previousScene;
		}
		
		public function init():void
		{
			this.addEventListener( MouseEvent.CLICK , onMouseClickHandler, false, 0 , true );
		}
		
		protected function onMouseClickHandler(event:MouseEvent):void
		{
			nextScene();
		}

		public function nextScene():void
		{
			if(!isChangeScene && isReady)
			{
				if( nextSceneName > 0)
				{
					isChangeScene = true;
					this.removeEventListener( MouseEvent.CLICK , onMouseClickHandler );
					this.onChangeSceneRequest.dispatch( nextSceneName );
				}
			}
		}
		
		public function previousScene():void
		{
			if(!isChangeScene && isReady)
			{
				if(previousSceneName > 0 )
				{
					isChangeScene = true;
					this.removeEventListener( MouseEvent.CLICK , onMouseClickHandler );
					this.onChangeSceneRequest.dispatch( previousSceneName );
				}
			}
		}
		
		public function stop():void
		{
			isReady = false;
			isChangeScene = false;
			this.removeEventListener( MouseEvent.CLICK , onMouseClickHandler );
		}
		
		public function makeTweenOnContainer( container:Sprite ):void
		{
			if( container )
			{
				var i:int;
				var numChildren:int = container.numChildren;
				var obj:DisplayObject;
				var tempX:Number;
				var tempY:Number;
				
				for ( i  = 0; i < numChildren; i++) 
				{
					obj = container.getChildAt( i );
					if ( obj.name.match( "tween" ) )
					{
						tempX = obj.x;
						tempY = obj.y;
						obj.x -= obj.width + STAGE_WIDTH;
						TweenLite.to( obj,DEFAULT_TWEEN_DURATION , {x:tempX , y:tempY, onComplete:makeReady, ease:Back.easeInOut } );
					}
				}
			}else
			{
				trace ( "N'AO EXISTE CONTAINER PARA REALIZAR TWEEN" );
			}
			
		}
		
		public function makeReady():void
		{
			isReady = true;
		}
		
		public function update():void
		{
			
		}
		
		
		public function destroy():void
		{
			
		}
		
	}
}
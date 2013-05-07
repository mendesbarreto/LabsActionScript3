package com.pieceOfCake.transitions
{
	import com.pieceOfCake.events.SceneTransitionEvent;
	import com.pieceOfCake.interfaces.IDisposable;
	import com.pieceOfCake.manager.Scene;
	
	import starling.display.DisplayObjectContainer;
	import starling.display.Image;
	import starling.textures.Texture;
	
	public final class TransitionBlackToWhite extends SceneTransition implements IDisposable
	{
		private var m_backgroundColor:uint;
		private var m_sceneToBlack:Scene;
		private var m_sceneToWithe:Scene;
		private var parent:DisplayObjectContainer;
		private var backgroundFX:Image;
		private var m_onComplete:Function;
		
		public function TransitionBlackToWhite(sceneToBlack:Scene, sceneToWithe:Scene, onComplete:Function, time:Number=1, delay:Number=0, backgroundColor:uint=0XFF113333)
		{
			super(time,delay);
			
			m_sceneToBlack = sceneToBlack;
			m_sceneToWithe = sceneToWithe;
			m_backgroundColor = backgroundColor;
			
			parent = m_sceneToBlack.parent;
			m_onComplete = onComplete;
		}
		
		override public function start():void{
			this.dispatchEvent(new SceneTransitionEvent(SceneTransitionEvent.ON_SCENE_TRANSITION_BEGIN,false));
			backgroundFX = new Image(Texture.fromColor(parent.width, parent.height, m_backgroundColor, true));
			backgroundFX.alpha = 0;
			parent.addChild(backgroundFX);
			
			
			
		}
		
		
		override public function dispose():void{
			m_sceneToBlack = null;
			m_sceneToWithe = null;
			super.dispose();
		}
		
	}
}
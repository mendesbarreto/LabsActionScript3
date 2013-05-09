package com.pieceOfCake.transitions
{
	import com.pieceOfCake.events.SceneTransitionEvent;
	import com.pieceOfCake.interfaces.IDisposable;
	import com.pieceOfCake.interfaces.ISceneManager;
	
	import starling.events.EventDispatcher;

	public class SceneTransition extends EventDispatcher implements IDisposable
	{
		private var m_time:Number = 1;
		private var m_delay:Number = 0;
		protected var m_sceneManager:ISceneManager;
		
		public function SceneTransition(sceneManager:ISceneManager, 
										time:Number = 1,
										delay:Number = 0)
		{
			m_sceneManager = sceneManager;
			m_time = time;
			m_delay = delay;
		}
		
		public function start():void{
			this.dispatchEvent(new SceneTransitionEvent(SceneTransitionEvent.ON_SCENE_TRANSITION_BEGIN,false));
		}
		
		public function end():void{
			this.dispatchEvent(new SceneTransitionEvent(SceneTransitionEvent.ON_SCENE_TRANSITION_COMPLETE,false));
		}
		
		public function dispose():void{
			m_sceneManager = null;
		}
	}
}
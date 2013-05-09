package com.pieceOfCake.events
{
	import starling.events.Event;
	
	public class SceneTransitionEvent extends Event
	{
		public static const ON_SCENE_TRANSITION_COMPLETE:String = "onSceneTransitionComplete";
		public static const ON_SCENE_TRANSITION_BEGIN:String = "onSceneTransitionComplete";

		public function SceneTransitionEvent(type:String, bubbles:Boolean=false, data:Object=null)
		{
			super(type, bubbles, data);
		}
	}
}
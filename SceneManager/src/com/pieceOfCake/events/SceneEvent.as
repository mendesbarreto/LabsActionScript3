////////////////////////////////////////////////////////////////////////////////
//Code stub generated with:
//                                Crocus Modeller
//                      Robust UML editor for AS3 & Flex devs.
//                             http://CrocusModeller.com
//
////////////////////////////////////////////////////////////////////////////////


package com.pieceOfCake.events {
	import com.pieceOfCake.manager.Scene;
	
	import starling.events.Event;
	
	/**
	 * com.pieceOfCake.events.SceneEvent
	 *
	 * @author YourName
	 */
	public class SceneEvent extends Event {
		///////////////////////
		// PROPERTIES
		///////////////////////
		
		/**
		 * This container willl be the where the all scene will be added
		 */
		private var scne:Scene;
		/**
		 * This container willl be the where the all scene will be added
		 */
		public static const ON_CHANGE_SCENE_REQUEST:String = "onChangeSceneRequest";
		/**
		 * This container willl be the where the all scene will be added
		 */
		public static const ON_CHANGE_SCENE_COMPLETE:String = "onChangeSceneComplete";
		/**
		 * This container willl be the where the all scene will be added
		 */
		public static const ON_CHANGE_SCENE_BEGIN:String = "onChangeSceneBegin";
		
		/**
		 * This container willl be the where the all scene will be added
		 */
		public static const ON_SCENE_EXIT_APPLICATION_REQUEST:String = "onSceneExitApplicationRequest";
		
		/**
		 * This container willl be the where the all scene will be added
		 */
		public static const ON_SCENES_LOAD_COMPLETE:String = "onSceneLoadComplete";
		
		public function SceneEvent(type:String, data:Object = null, bubbles:Boolean = false) 
		{
			super(type, bubbles, data);	
		}

	}
}
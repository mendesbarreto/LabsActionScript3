////////////////////////////////////////////////////////////////////////////////
//Code stub generated with:
//                                Crocus Modeller
//                      Robust UML editor for AS3 & Flex devs.
//                             http://CrocusModeller.com
//
////////////////////////////////////////////////////////////////////////////////


package com.pieceOfCake.manager {
	import com.pieceOfCake.events.SceneEvent;
	import com.pieceOfCake.interfaces.ISceneManager;
	import com.pieceOfCake.model.TransitionTypes;
	
	import flash.geom.Point;
	
	import starling.display.Sprite;
	import starling.events.EnterFrameEvent;
	import starling.events.Event;
	import starling.events.EventDispatcher;

	/**
	 * This class is responsable for all scene instances in the screen
	 */
	public class ScenesManager extends EventDispatcher implements ISceneManager {
		///////////////////////
		// PROPERTIES
		///////////////////////
		
		/**Hold the number of scenes that exists**/
		private var m_sceneNumber:int = 0;
		
		/**
		 * Holds all scene instances on a slngle list
		 */
		private var m_currentScene:Scene;
		/**
		 * Holds all scene instances on a slngle list
		 */
		private var m_scenes:Vector.<Scene>;
		private var m_isTransition:Boolean;
		
		/**
		 * This container will be where the all scene will be added
		 */
		private var m_container:Sprite;

		private var m_isUpdating:Boolean = false;
		
		
		public function ScenesManager(mainContainer:Sprite, sceneNumber:int = 7) 
		{
			m_scenes = new Vector.<Scene>(sceneNumber, true);
			m_sceneNumber = 0;
			m_container = mainContainer;
			
			if(m_container.stage){
				onAddedToStage(null);	
			}else{
				m_container.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			}
		}
		
		///////////////////////
		// METHODS
		///////////////////////
		public function add(name:String, SceneClass:Class, position:Point = null):void {
			var scene:Scene = new SceneClass();
			scene.name = name;
			
			//Adding the events which will drive the application behavior
			scene.addEventListener(SceneEvent.ON_CHANGE_SCENE_REQUEST, onSceneChangeRequest);
			scene.addEventListener(SceneEvent.ON_SCENE_EXIT_APPLICATION_REQUEST, onSceneRequestExit);
			scene.addEventListener(Event.CLOSE, onSceneRequestExit);
			
			this.m_container.addChild(scene);
			this.m_scenes[m_sceneNumber] = scene;
			
			m_currentScene = scene;
			
			this.stopScene(scene);

			m_sceneNumber++;
			
			scene.init();
			
			if(m_sceneNumber == m_scenes.length){
				this.dispatchEvent(new SceneEvent(SceneEvent.ON_SCENES_LOAD_COMPLETE, this, false));
			}
		}
		
		private function onSceneRequestExit(event:SceneEvent):void
		{
			
		}
		
		private function  onAddedToStage(event:Event):void{
			this.m_container.addEventListener(EnterFrameEvent.ENTER_FRAME, update);
		}
		
		public function update(event:EnterFrameEvent):void{
			if(m_isUpdating){
				this.advanceTime(event.passedTime);
			}
		}
		
		private function advanceTime(passedTime:Number):void{
			m_currentScene.update(passedTime);
		}
		
		public function removeSceneByName(name:String):void {
			//TODO: REmover cenas pelo nome fornecido
		}
		
		/**Starts the scene process***/
		public function startScene(scene:Scene):void{
			scene.visible = true;
			scene.start();
		}
		
		/**Stops the scene process***/
		public function stopScene(scene:Scene):void{
			scene.visible = false;
			trace("The scene:",scene.name,"visible is false!");
			scene.stop();
		}
		
		protected function onSceneChangeRequest(event:SceneEvent):void{
			gotoScene(event.data as String);
		}
		
		public function getSceneByName(name:String):Scene{
			var i:int;
			var length:int = m_scenes.length;
			var scene:Scene;
			
			for (i = 0; i < length; i++)
			{
				if(m_scenes[i].name == name)
					scene = m_scenes[i]; 	
			}
			
			return scene;
		}
		
		/**
		 * This method is responsable for change a scene with some transition if specifyed
		 */
		public function gotoScene(name:String, transitionType:int = TransitionTypes.DEFAULT):void {
			var lastScene:Scene = m_currentScene;
			
			this.dispatchEvent(new SceneEvent(SceneEvent.ON_CHANGE_SCENE_BEGIN, name));
			this.stopScene(m_currentScene);
			
			m_currentScene = this.getSceneByName(name);
			
			if(m_currentScene)
			{
				this.startScene(m_currentScene);
				this.dispatchEvent(new SceneEvent(SceneEvent.ON_CHANGE_SCENE_COMPLETE, name));	
			}else{
				//TODO: make some class especific error
				throw new Error("THE SCENE NOT EXITS: " + name);
			}
		}

		public function start():void {
			this.startWithScene(this.m_currentScene.name);
		}
		
		public function startWithScene(sceneName:String):void {
			this.gotoScene(sceneName);
			this.m_isUpdating = true;
		}
		
		public function stop():void {
			//TODO: Inicia scene manager
			this.m_isUpdating = false;
			this.stopScene(this.m_currentScene);
		}

		///////////////////////
		// GETTERS/SETTERS
		///////////////////////
		
		public function getCurrentScene():Scene {
			return m_currentScene;
		}

		private function setCurrentScene(value:Scene):void {
			m_currentScene = value;
		}

		public function getIsTransition():Boolean {
			return m_isTransition;
		}

		private function setIsTransition(value:Boolean):void {
			m_isTransition = value;
		}

		public function getIsUpdating():Boolean
		{
			return m_isUpdating;
		}
		
		protected function setIsUpdating(value:Boolean):void
		{
			m_isUpdating = value;
		}

		
		public function dispose():void{
			m_isUpdating = false;
			
			m_currentScene = null;
			m_isTransition = false;
			
			var i:int;
			var scene:Scene;
			var length:int = this.m_scenes.length;
			for(i = 0; i < length; i++){
				this.m_scenes[i].dispose();
				this.m_scenes[i] = null;
			}
			
			m_container.dispose();
			m_container = null;
			
		}
		

	}
}
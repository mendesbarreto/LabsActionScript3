////////////////////////////////////////////////////////////////////////////////
//Code stub generated with:
//                                Crocus Modeller
//                      Robust UML editor for AS3 & Flex devs.
//                             http://CrocusModeller.com
//
////////////////////////////////////////////////////////////////////////////////


package com.pieceOfCake.manager {
	import com.pieceOfCake.events.SceneEvent;
	
	import starling.animation.IAnimatable;
	import starling.animation.Juggler;
	import starling.display.Sprite;

	/**
	 * com.pieceOfCake.manager.Scene
	 *
	 * @author YourName
	 */
	public class Scene extends Sprite {
		///////////////////////
		// PROPERTIES
		///////////////////////
		/**
		 * 
		 * This container willl be the where the all scene will be added
		 * 
		 */
		protected var	m_asset:Sprite;
		
		/**Responsable for hold play or stop all the scene animation**/
		protected var m_juggler:Juggler;
		
		/**Controls the state of the scene, case the variable is true the scene will be updated **/
		protected var m_isUpdating:Boolean = false;
		
		/***Show if the scene was initialized**/
		private var m_isInitialized:Boolean = false;
		
		/**Show if the scene is making some change staff**/
		protected var m_isChangeScene:Boolean = false;
		
		public function Scene(){}
		///////////////////////
		// METHODS
		///////////////////////
		/**Function will be called always in the scene initialization**/
		public function init():void{
			m_juggler = new Juggler();
			this.m_asset = new Sprite();
			this.addChild(m_asset);
		}
		
		public function update(time:Number):void 
		{
			if(m_isUpdating)
			{
				m_juggler.advanceTime(time);
			}
		}
		
		/**Add some animation to be played in the scene**/
		public function addAnimationOnScene(animation:IAnimatable):void{
			this.m_juggler.add(animation);
		}
		
		public function getJugguler():Juggler{
			return this.m_juggler;
		}
		/**
		 * Request to the Scene manager to change the current scene
		 * 
		 * @params name:String - Insert here the scene you want to go.
		 * 
		 * @see com.pieceOfCake.manager.ScenesManager
		 * **/
		protected function changeScene(name:String):void{
			//TODO caio douglas..qd do change scene pela segunda vez..esse m_isChangeScene eh TRUE..entao nao entra nessa funcao!!!
			if(!m_isChangeScene){
				m_isChangeScene = true;
				if(name != "" && name != null){
					var bool:Boolean = this.hasEventListener(SceneEvent.ON_CHANGE_SCENE_REQUEST);
					this.dispatchEvent(new SceneEvent(SceneEvent.ON_CHANGE_SCENE_REQUEST, name));
				}else{
					throw new Error("The scene name could not be null");
				}
			}else{
				//Debug Message saying that scene will change
			}
		}
		
		/***Ask to the main application to exist****/
		protected function exitApplication():void{
			this.dispatchEvent(new SceneEvent(SceneEvent.ON_SCENE_EXIT_APPLICATION_REQUEST, this));
		}
		
		public function start():void{
			this.m_isInitialized = true;
			this.m_isUpdating = true;
			this.m_isChangeScene = false;
		}
		
		public function stop():void{
			this.m_isUpdating = false;
		}
		
		///////////////////////
		// GETTERS/SETTERS
		///////////////////////
		
		public function getIsChangeScene():Boolean
		{
			return m_isChangeScene;
		}
		
		public function setIsChangeScene(value:Boolean):void
		{
			m_isChangeScene = value;
		}
		
		private function getAsset():Sprite {
			return m_asset;
		}
		
		private function setAsset(value:Sprite):void {
			m_asset = value;
		}
		
		public function getIsInitialized():Boolean
		{
			return m_isInitialized;
		}
		
		private function setIsInitialized(value:Boolean):void
		{
			m_isInitialized = value;
		}
		
		override public function dispose():void{
			super.dispose();
		}
		
	}
}
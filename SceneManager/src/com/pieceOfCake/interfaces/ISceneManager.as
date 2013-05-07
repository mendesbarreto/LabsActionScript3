package com.pieceOfCake.interfaces
{
	import com.pieceOfCake.manager.Scene;
	import com.pieceOfCake.model.TransitionTypes;
	import flash.geom.Point;
	import starling.events.EnterFrameEvent;

	public interface ISceneManager
	{
		function add(name:String, SceneClass:Class, position:Point = null):void;		
		function update(event:EnterFrameEvent):void;		
		function removeSceneByName(name:String):void;
		function startScene(scene:Scene):void;
		function stopScene(scene:Scene):void;
		function getSceneByName(name:String):Scene;
		function gotoScene(name:String, transitionType:int = TransitionTypes.DEFAULT):void;
		function start():void;
		function startWithScene(sceneName:String):void;
		function stop():void;
		function getCurrentScene():Scene;
		function getIsTransition():Boolean;
		function getIsUpdating():Boolean;		
		
	}
}
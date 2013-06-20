package com.globo.sitio.mario
{
	import com.globo.sitio.mario.components.Vector2D;
	import com.globo.sitio.mario.entity.EntityBuilder;
	import com.globo.sitio.mario.input.KeyPoll;
	import com.globo.sitio.mario.system.MarioInputSystem;
	import com.globo.sitio.mario.system.MovimentSystem;
	import com.globo.sitio.mario.system.RenderSystem;
	import com.globo.sitio.mario.system.SystemPriorities;
	
	import ash.core.Engine;
	import ash.integration.starling.StarlingFrameTickProvider;
	
	import starling.core.Starling;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class MarioGame extends Sprite
	{
		private var engine:Engine;
		private var tickProvider:StarlingFrameTickProvider;
		private var keyPoll:KeyPoll;
		private var entityBuilder:EntityBuilder;
		
		
		public function MarioGame()
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		
		private function onAdded(event:Event):void
		{
			createEngine();
		}
		
		private function start() : void
		{
			keyPoll = new KeyPoll(Starling.current.nativeStage);
			tickProvider = new StarlingFrameTickProvider( Starling.current.juggler );
			tickProvider.add( engine.update );
			tickProvider.start();
			
			
			entityBuilder = EntityBuilder.getInstance();
			entityBuilder.initialize(engine);
			entityBuilder.createGrowMushroom(new Vector2D(10,10));
			
		}
		
		private function stop() : void
		{
			tickProvider.stop();
		}
		
		private function createEngine():void{
			engine = new Engine();
			this.start();
			engine.addSystem(new RenderSystem(this),SystemPriorities.RENDER);
			engine.addSystem(new MovimentSystem(),SystemPriorities.MOVE);
			engine.addSystem(new MarioInputSystem(keyPoll),SystemPriorities.PRE_UPDATE);
		}
		
	}
}
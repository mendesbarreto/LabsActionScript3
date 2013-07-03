package com.globo.sitio.mario.entity
{
	import com.globo.sitio.mario.assets.Mushroom;
	import com.globo.sitio.mario.components.CharacterStates;
	import com.globo.sitio.mario.components.Graphic;
	import com.globo.sitio.mario.components.MarioInput;
	import com.globo.sitio.mario.components.Motion;
	import com.globo.sitio.mario.components.Player;
	import com.globo.sitio.mario.components.Vector2D;
	
	import flash.ui.Keyboard;
	
	import ash.core.Engine;
	import ash.core.Entity;
	
	import starling.display.Image;

	public final class EntityBuilder
	{
		static private var okToCreate:Boolean = false;
		static private var instance:EntityBuilder = null;
		
		private var m_engine:Engine;
		
		public function EntityBuilder()
		{
			if(!okToCreate){
				throw new Error("Class could not be instantiated");
			}
		}
		
		static public function getInstance():EntityBuilder{
			
			if(!instance){
				okToCreate = true;
				instance = new EntityBuilder();
				okToCreate = false;
			}
			
			return instance;
		}
		
		public function initialize(engine:Engine):void{
			m_engine = engine;
		}
		
		final public function createMario():Entity{
			return null;
		}
		
		final public function createGrowMushroom(position:Vector2D):Entity{
			var graphics:Graphic = new Graphic(Image.fromBitmap(new Mushroom()));
			var entity:Entity = new Entity().add(position)
				.add(graphics)
				.add(new Player())
				.add(new CharacterStates())
				.add(new MarioInput(Keyboard.LEFT, Keyboard.RIGHT, Keyboard.SPACE))
				.add(new Motion());
			
			m_engine.addEntity(entity);
			return entity;
		}
		
		final public function createLifeMushroom(position:Vector2D):Entity{
			var graphics:Graphic = new Graphic(Image.fromBitmap(new Mushroom()));
			var entity:Entity = new Entity().add(position).add(graphics);
			m_engine.addEntity(entity);
			return entity;
		}
		
		final public function createPeteyPiranha():Entity{
			return null;
		}
		
		final public function createGoma():Entity{
			return null;
		}
		
		final public function createKingBoo():Entity{
			return null;
		}
		
		final public function createKopaa():Entity{
			return null;
		}
		
		final public function createSolidBreak():Entity{
			return null;
		}
		
		final public function createCoinBox():Entity{
			return null;
		}
		
		final public function createCoin():Entity{
			return null;
		}
		
		final public function createCloud():Entity{
			return null;
		}
		
		final public function createBreakableBrick():Entity{
			return null;
		}
		
		final public function createPipe():Entity{
			return null;
		}
		
		
		
	}
}
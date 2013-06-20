package com.globo.sitio.mario.system
{
	import com.globo.sitio.mario.components.CharacterStates;
	import com.globo.sitio.mario.components.Motion;
	import com.globo.sitio.mario.components.Vector2D;
	import com.globo.sitio.mario.nodes.DinamicBody;
	
	import ash.core.Engine;
	import ash.core.NodeList;
	import ash.core.System;
	
	public final class MovimentSystem extends System
	{
		private var m_nodes : NodeList;
		
		public function MovimentSystem()
		{
			super();
		}
		
		override public function addToEngine(engine:Engine):void
		{
			m_nodes = engine.getNodeList(DinamicBody);
		}
		
		
		override public function update( time : Number ) : void
		{
			var node : DinamicBody;
			var position : Vector2D;
			var motion  :Motion;
			var states	:CharacterStates;
			
			for( node = m_nodes.head; node; node = node.next )
			{
				position = node.position;
				motion = node.motion;
				states = node.states;
				
				
				var velocity:Number = motion.GetVelocity().GetX();
				var velocityMax:Number = motion.GetMaxVelocity().GetX();
				var aceleration:Number = motion.GetAceleration();
				
				if(states.isRight && motion.GetVelocity().GetX() < velocityMax){
					velocity += aceleration;
				}
				
				if(states.isLeft && motion.GetVelocity().GetX() > -velocityMax){
					velocity -= aceleration;
				}
				
				if(!states.isLeft && !states.isRight){
					
					if(velocity > 0.5 || velocity < -0.5){
						velocity *= 0.9;
					}else{
						velocity = 0;
					}
				}
				
				trace(velocity);
				position.SetX(position.GetX() + (velocity * time));
				//position.SetY(position.GetY() + (motion.GetVelocity().GetY() * time));
				
				motion.SetVelocityX(velocity);
				
			}
		}
		
	}
}
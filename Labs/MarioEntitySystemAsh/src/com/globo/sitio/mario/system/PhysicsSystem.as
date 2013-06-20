package com.globo.sitio.mario.system
{
	import com.globo.sitio.mario.components.Motion;
	import com.globo.sitio.mario.components.Vector2D;
	import com.globo.sitio.mario.nodes.DinamicBody;
	
	import ash.core.Engine;
	import ash.core.NodeList;
	import ash.core.System;
	
	public final class PhysicsSystem extends System
	{
		private var m_nodes : NodeList;
		
		public function PhysicsSystem()
		{
			super();
		}
		
		override public function addToEngine(engine:Engine):void
		{
			m_nodes = engine.getNodeList(DinamicBody);
		}
		
		
		override public function update( time : Number ) : void
		{
/*			var node : DinamicBody;
			var position : Vector2D;
			var motion  :Motion;
			
			for( node = m_nodes.head; node; node = node.next )
			{
				position = node.position;
				motion = node.motion;
				
				position.SetX(position.GetX() + (motion.GetVelocity().GetX() * time));
				position.SetY(position.GetY() + (motion.GetVelocity().GetY() * time));
			}*/
		}
		
	}
}
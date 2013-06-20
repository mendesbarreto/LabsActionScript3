package com.globo.sitio.mario.system
{
	import com.globo.sitio.mario.components.Graphic;
	import com.globo.sitio.mario.components.Vector2D;
	import com.globo.sitio.mario.nodes.RenderNode;
	
	import ash.core.Engine;
	import ash.core.NodeList;
	import ash.core.System;
	
	import starling.display.DisplayObjectContainer;
	
	public final class RenderSystem extends System
	{
		
		private var m_container : DisplayObjectContainer;
		
		private var m_nodes : NodeList;
		
		public function RenderSystem(mainContainer:DisplayObjectContainer)
		{
			super();
			m_container = mainContainer;
		}
		
		
		override public function addToEngine( engine : Engine ) : void
		{
			m_nodes = engine.getNodeList( RenderNode );
			
			for( var node : RenderNode = m_nodes.head; node; node = node.next )
			{
				addToDisplay( node );
			}
			
			m_nodes.nodeAdded.add( addToDisplay );
			m_nodes.nodeRemoved.add( removeFromDisplay );
		}
		
		private function addToDisplay( node : RenderNode ) : void
		{
			m_container.addChild( node.display.GetDisplayObject() );
		}
		
		private function removeFromDisplay( node : RenderNode ) : void
		{
			m_container.removeChild( node.display.GetDisplayObject() );
		}
		
		override public function update( time : Number ) : void
		{
			var node : RenderNode;
			var position : Vector2D;
			var graphic: Graphic;
			
			for( node = m_nodes.head; node; node = node.next )
			{
				
				position = node.position;
				graphic = node.display;
				
				graphic.GetDisplayObject().x = position.GetX();
				graphic.GetDisplayObject().y = position.GetY();
			}
		}
		
		override public function removeFromEngine( engine : Engine ) : void
		{
			m_nodes = null;
		}
		
		
	}
}
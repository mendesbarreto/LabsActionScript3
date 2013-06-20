package com.globo.sitio.mario.nodes
{
	import com.globo.sitio.mario.components.CharacterStates;
	import com.globo.sitio.mario.components.Motion;
	import com.globo.sitio.mario.components.Vector2D;
	
	import ash.core.Node;
	
	public final class DinamicBody extends Node
	{	
		public var position:Vector2D;
		public var motion:Motion;
		public var states:CharacterStates;
	}
}
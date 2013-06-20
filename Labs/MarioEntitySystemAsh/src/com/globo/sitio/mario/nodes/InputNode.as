package com.globo.sitio.mario.nodes
{
	import com.globo.sitio.mario.components.CharacterStates;
	import com.globo.sitio.mario.components.MarioInput;
	import com.globo.sitio.mario.components.Player;
	
	import ash.core.Node;

	public class InputNode extends Node
	{
		public var player:Player;
		public var characterStates:CharacterStates;
		public var characterKeys:MarioInput;
	}
}
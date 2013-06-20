package com.globo.sitio.mario.system
{
	import com.globo.sitio.mario.components.CharacterStates;
	import com.globo.sitio.mario.components.MarioInput;
	import com.globo.sitio.mario.input.KeyPoll;
	import com.globo.sitio.mario.nodes.InputNode;
	
	import ash.tools.ListIteratingSystem;

	public final class MarioInputSystem extends ListIteratingSystem
	{
		private var m_keyPoll:KeyPoll;
		
		public function MarioInputSystem(keyPoll:KeyPoll)
		{
			super(InputNode,updateNode);
			m_keyPoll = keyPoll;
		}
		
		private function updateNode( node : InputNode, time : Number ) : void{
			var states:CharacterStates = node.characterStates;
			var input:MarioInput = node.characterKeys;
			
			if(m_keyPoll.isDown(input.getKeyRight())){
				states.isRight = true;
			}else{
				states.isRight = false;
			}
			
			if(m_keyPoll.isDown(input.getKeyLeft())){
				states.isLeft = true;
			}else{
				states.isLeft = false;				
			}		
			
			if(m_keyPoll.isDown(input.getKeyJump())){
				if(!states.isJumping)
					states.isJump = true;
			}else{
				states.isJump = false;
			}
		}
	}
}
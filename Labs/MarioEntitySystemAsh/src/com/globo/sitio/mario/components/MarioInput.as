package com.globo.sitio.mario.components
{
	public final class MarioInput
	{
		private var m_KeyLeft : uint = 0;
		private var m_KeyRight : uint = 0;
		private var m_KeyJump : uint = 0;
		
		public function MarioInput( keyLeft : uint, keyRight : uint, keyJump : uint)
		{
			this.m_KeyLeft = keyLeft;
			this.m_KeyRight = keyRight;
			this.m_KeyJump = keyJump;
		}
		
		public function getKeyLeft():uint{
			return m_KeyLeft;
		}
		
		public function getKeyRight():uint{
			return m_KeyRight;
		}
		
		public function getKeyJump():uint{
			return m_KeyJump;
		}
		
		
		
	}
}
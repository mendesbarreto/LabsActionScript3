package com.globo.sitio.mario.components
{
	public class Motion
	{
		private var m_velocity:Vector2D = new Vector2D(0,0);
		private var m_aceleration:Number = 10;
		private var m_maxVelocity:Vector2D = new Vector2D(100,100);
		
		public function GetAceleration():Number{ return m_aceleration; }
		public function SetAceleration(aceleration:Number):void{ m_aceleration = aceleration; }
		
		public function GetVelocity():Vector2D{ return m_velocity; }
		public function SetVelocity(velocity:Vector2D):Vector2D{ return m_velocity = velocity; }
		
		public function SetVelocityX(x:Number):void{ 
			m_velocity.SetX(x); 
		}
		
		public function SetVelocityY(y:Number):void{ m_velocity.SetX(y); }
		
		
		public function GetMaxVelocity():Vector2D{ return m_maxVelocity; }
		public function SetMaxVelocity(velocity:Vector2D):Vector2D{ return m_maxVelocity = velocity; }
		
	}
}
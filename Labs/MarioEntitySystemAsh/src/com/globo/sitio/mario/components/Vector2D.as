package com.globo.sitio.mario.components
{

	public final class Vector2D
	{
		private var m_x:Number;
		private var m_y:Number;
		private var m_rotation:Number;
			
		public function Vector2D(x:Number = 0, y:Number = 0, rotation:Number = 0)
		{
			m_x = x;
			m_y = y;
			m_rotation;
		}
		
		public function SetX(value:Number):void{
			m_x = value;
		}
		
		public function SetY(value:Number):void{
			m_y = value;
		}
		
		public function GetX():Number{
			return m_x;
		}
		
		public function GetY():Number{
			return m_y;
		}
		
		public function GetRotation():Number{
			return m_rotation;
		}
		
		public function Normalaze():void{
			//TODO
		}
		
	}
}
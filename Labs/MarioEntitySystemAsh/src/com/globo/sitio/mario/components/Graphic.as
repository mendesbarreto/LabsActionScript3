package com.globo.sitio.mario.components
{
	import starling.display.DisplayObject;

	public class Graphic
	{
		private var displayObject : DisplayObject = null;
		
		public function Graphic( displayObject : DisplayObject )
		{
			super();
			this.displayObject = displayObject;
		}
		
		public function GetDisplayObject():DisplayObject{
			return displayObject;
		}
	}
}
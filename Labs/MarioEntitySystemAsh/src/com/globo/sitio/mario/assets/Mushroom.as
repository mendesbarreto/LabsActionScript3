package com.globo.sitio.mario.assets
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	
	[Embed(source="../../../../../../graphics/mushroom.png")]
	public class Mushroom extends Bitmap
	{
		public function Mushroom(bitmapData:BitmapData=null, pixelSnapping:String="auto", smoothing:Boolean=false)
		{
			super(bitmapData, pixelSnapping, smoothing);
		}
	}
}
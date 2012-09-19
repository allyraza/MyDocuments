﻿package 
{
	import flash.display.*;
	import flash.events.*;
	import flash.filters.BlurFilter;
	import flash.filters.ConvolutionFilter;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;
	import flash.geom.Matrix;
	import flash.net.URLRequest;

	public class Main extends Sprite 
	{
		
		public function Main(  ) 
		{	
			// basic knowledge about convolutionFilter
			convolutionFilterBasic();
		}
		
		private function convolutionFilterBasic():void
		{
			var _loader:Loader = new Loader();
			var _sprite:Sprite = new Sprite();
			
			_loader.load(new URLRequest("images/bike2.jpg"));
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, getFilter);
			
			function getFilter(event:Event):void
			{
				var _bitmap:Bitmap = Bitmap(_loader.content);
				_sprite.x = 200;
				_sprite.y = 100;
				_sprite.addChild(_bitmap);
				
				// constructor for ConvolutionFilter
				// more info http://www.cee.hw.ac.uk/hipr/html/convolve.html
				// first para: define the number of columns
				// second para: define the number of rows
				// third para: the array of matrix values
				// so the data apply to matrix will like 
				/* 
					1,1,1
					1,1,1
					1,1,1
				*/
				// last para: define brightness
				// 9=unchange. small number going to light, big number going to dark
				
				var _convolutionFilter:ConvolutionFilter = new ConvolutionFilter(3, 3, [1, 1, 1, 1, 1, 1, 1, 1, 1],9);
				_sprite.filters = [_convolutionFilter];
				addChild(_sprite);
			}
		}
	}	
}

﻿package 
{
	import flash.display.*;
	import flash.events.*;
	import flash.filters.BlurFilter;
	import flash.filters.DropShadowFilter;
	import flash.filters.GlowFilter;
	import flash.geom.Matrix;
	import flash.net.URLRequest;

	public class Main extends Sprite 
	{
		
		public function Main(  ) 
		{	
			// on click reset the display object filters property
			resetFilters();
		}
		
		private function resetFilters():void
		{
			var _loader:Loader = new Loader();
			var _sprite:Sprite = new Sprite();
			var _bitmap:Bitmap;
			
			_loader.load(new URLRequest("images/bike2.jpg"));
			_loader.contentLoaderInfo.addEventListener(Event.COMPLETE, getFilters);
			_sprite.addEventListener(MouseEvent.CLICK, resetFilters);
			
			function getFilters(event:Event):void
			{
				_bitmap= Bitmap(_loader.content);
				_sprite.x = 200;
				_sprite.y = 70;
				
				// instance filter objects
				var _drapShadow:DropShadowFilter = new DropShadowFilter(20);
				var _glow:GlowFilter = new GlowFilter();
				
				// create an array add filter objects into this array
				var _filters:Array = [_drapShadow, _glow];
				
				// assign this array to display object filter property
				_sprite.filters = _filters;
				
				_sprite.addChild(_bitmap);
				addChild(_sprite);
			}
			
			function resetFilters(event:MouseEvent):void
			{
				_sprite.filters = [];
			}
		}
	}	
}

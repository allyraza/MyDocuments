﻿package {
import flash.display.*;
import flash.events.*;
import flash.text.*;
import flash.ui.*;
	
	public class Main extends Sprite {
		private var keyoutput:TextField;
		
		public function Main() {
			keyoutput = new TextField( );
			keyoutput.text = "Press any key...";
			keyoutput.autoSize = TextFieldAutoSize.LEFT;
			keyoutput.border = true;
			keyoutput.background = true;
			addChild(keyoutput);
			
			stage.addEventListener(KeyboardEvent.KEY_DOWN, keyDownListener);
		}
		
		private function keyDownListener (e:KeyboardEvent):void {
			keyoutput.text = "The key code for the key you pressed is: "+ e.keyCode + "\n";
			keyoutput.appendText("The character code for the key you pressed is: "+ e.charCode + "\n");
			keyoutput.appendText("The character for the key you pressed is: "+ String.fromCharCode(e.charCode));
		}
	}
}
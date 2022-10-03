package arm;

import kha.input.Mouse;
import kha.input.Keyboard;
import kha.input.KeyCode;


class MyTrait extends iron.Trait {
	public function new() {
		super();

		var onKeyDown : KeyCode -> Void = function (key:KeyCode) {
			trace(key + " down");
		}
		var onKeyUp : KeyCode -> Void = function (key:KeyCode) {
			trace(key + " up");
		}
		var onMouseLeft = function (botton:Int, x:Int, y:Int) {
			trace("mouse " + "btn" + botton + ":" + x + "," +y);
		}
		notifyOnInit(function() {
			// this -> trait itself; 
			trace("hello from the " + this.object.name);
			Keyboard.get().notify(onKeyDown, onKeyUp);
			Mouse.get().notify(onMouseLeft);
		});

		// notifyOnUpdate(function() {
		// });

		// notifyOnRemove(function() {
		// });
	}
}

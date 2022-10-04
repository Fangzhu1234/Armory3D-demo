package arm;

import iron.math.Vec4;

class CylinderHandler extends iron.Trait {
	public function new() {
		super();

		notifyOnInit(function() {
			trace("hello from " + object.name);
		});

		notifyOnUpdate(function() {
			var kbd = iron.system.Input.getKeyboard();
			if (kbd.down("a")) {
				object.transform.move(new Vec4(-0.1,0,0,0));
			}
			if (kbd.down("d")) {
				object.transform.move(new Vec4(0.1,0,0,0));
			}
			if (kbd.down("w")) {
				object.transform.move(new Vec4(0,0.1,0,0));
			}
			if (kbd.down("s")) {
				object.transform.move(new Vec4(0,-0.1,0,0));
			}
		});

		// notifyOnRemove(function() {
		// });
	}
}

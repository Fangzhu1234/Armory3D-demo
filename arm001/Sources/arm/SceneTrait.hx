package arm;

import iron.Scene;

class SceneTrait extends iron.Trait {
	public function new() {
		super();

		notifyOnInit(function() {
			trace("nodes in the scene:");
			var nodes = Scene.active.getChildren(true);
			for (node in nodes) {
				trace(node.name);
			}
		});

		// notifyOnUpdate(function() {
		// });

		// notifyOnRemove(function() {
		// });
	}
}

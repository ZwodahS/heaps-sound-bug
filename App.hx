class App extends hxd.App {

  override function init() {
		// @:privateAccess haxe.MainLoop.add(() -> {});
		// @:privateAccess hxd.snd.Manager.get().updateEvent.isBlocking = true;
		hxd.Res.music_loop.play(true);
  }

	var delta: Float = 0;
	override function update(dt: Float) {
		this.delta += dt;
		if (delta >= 2) {
			hxd.Res.sound_fx.play();
			delta = 0;
		}
	}

  static function main() {
    hxd.Res.initEmbed();
    new App();
  }

}

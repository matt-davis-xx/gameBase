package en;

class Hero extends Entity {

    var ca : dn.heaps.Controller.ControllerAccess;

	public function new(x,y) {
		super(x,y);

		// Some default rendering for our character
		var g = new h2d.Graphics(spr);
		g.beginFill(0xff0000);
        // g.drawRect(0,0,16,16);
        g.drawCircle(0, 0, 20, 5);        
        ca = Main.ME.controller.createAccess("hero"); // creates an instance of controller
    }
    
    override function dispose() {
        super.dispose();
        ca.dispose();
    }

    override function update() {
        super.update();

        if( ca.leftDown() || ca.isKeyboardDown(hxd.Key.LEFT) )
			dx -= 0.1*tmod;

		if( ca.rightDown() || ca.isKeyboardDown(hxd.Key.RIGHT) )
			dx += 0.1*tmod;
    }
}
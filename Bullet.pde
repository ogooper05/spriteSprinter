class Bullet extends Sprite {
    
    Bullet(float x, float y, PVector velocity, int team) {
        super(x, y, 10, 10); //invokes parent constructor
        vel = velocity;
        this.team = team;
    }
    
    Bullet(PVector pos, PVector vel, int team) {
        // constructor chaining
        this(pos.x,pos.y,vel,team); //invoke another own constructor
        //refers to line 3 above
    }

    @Override
    void update() {
        pos.add(vel);
    }
}

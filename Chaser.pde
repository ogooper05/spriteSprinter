class Chaser extends Sprite {

    Chaser(float x, float y) {
          super(x, y, 40, 40);
        vel = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y); // moving right
        vel = vel.normalize().mult(8);

    }
    

     @Override // change directions left and right
    void update() {
        vel = new PVector(_SM.player.pos.x - this.pos.x, _SM.player.pos.y - this.pos.y);
        vel = vel.normalize().mult(10);
        pos.add(vel);
        
        if (pos.x < 0 || pos.x > width) {
            vel.x *= -1;
        }
    }
}
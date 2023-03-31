sprite s;
void setup() {
    size(800, 600);
    s = new sprite(width/2, height/2, 50, 50);
}

//runs at speed of frame rate

void draw() {
    s.update();
    s.display();
}

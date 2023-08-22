Walker w;

void setup() {
  size(640, 360);
  w = new Walker(width / 2, height / 2);
  background(255);
}

void draw() {
  w.display();
  w.step();
}

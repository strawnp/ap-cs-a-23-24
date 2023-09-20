Bird b;

void setup() {
  size(640, 360);
  b = new Bird(width / 2, height / 2);
}

void draw() {
  b.update();
  b.display();
}

Board b;

void setup() {
  size(800, 800);
  b = new Board(100, 100);
}

void draw() {
  b.step();
  b.display();
}

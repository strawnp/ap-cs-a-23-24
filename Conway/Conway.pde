Board b;

void setup() {
  size(800, 800);
  b = new Board(100, 100);
}

void draw() {
  b.display();
  b.step();
}

void keyPressed() {
  b.step();
}

void mousePressed() {
  b.toggle(mouseY / 80, mouseX / 80);
}

Bird b;

void setup() {
  size(640, 640);
  b = new Bird(width / 2, 50);
}

void draw() {
  background(220);
  // create gravity vector
  PVector gravity = new PVector(0, 0.1);
  b.applyForce(gravity);
  b.update();
  b.display();
}

void keyPressed() {
  if (key == ' ') {
    PVector jump = new PVector(0, -10);
    b.applyForce(jump);
  }
}

void mousePressed() {
  PVector jump = new PVector(0, -10);
  b.applyForce(jump);
}

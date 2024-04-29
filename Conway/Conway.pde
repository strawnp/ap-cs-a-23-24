Board b;
boolean run = false;

void setup() {
  size(800, 800);
  b = new Board(100, 100);
}

void draw() {
  b.display();
  if (run) {
    b.step();
  }
}

void keyPressed() {
  if (key == ' ') {
    run = !run;
  } else if (key == 'r') {
    b.refill();
  } else if (key == 'c') {
    b.clearBoard();
  } else if (key == 'g') {
    b.drawGliderGun();
  } else if (key == 'p') {
    b.drawPulsar();
  } else if (key == 'a') {
    b.drawAcorn();
  } else if (key == 's') {
    b.drawSimkinsGliderGun();
  } else if (key == 'h') {
    b.drawHWSS();
  } else if (key == 'd') {
    b.drawPentadecathlon();
  }
}

void mousePressed() {
  b.toggle(mouseY / 8, mouseX / 8);
}

float x = 250;
float y = 250;
float xSpeed = 3;
float ySpeed = 5;
float acc = 1.1;

void setup() {
  size(500, 500);
  background(255, 0, 0);
}

// TODO:
// randomness
// printing to the console
// arrays
// variables
// interaction --> keyboard, mouse clicking

void draw() {
  background(255, 0, 0);
  if (x < height / 2) {
    fill(0, 255, 0);
    strokeWeight(3);
    stroke(255, 0, 255);
  } else {
    fill(43, 27, 243);
    strokeWeight(9);
    stroke(255, 255, 0);
  }
  ellipse(x, y, 50, 50);
  
  if (x > width - 25) {
    xSpeed = -xSpeed * acc;
  } else if (x < 25) {
    xSpeed = -xSpeed * acc;
  }
  x += xSpeed;
  if (y > height - 25) {
    ySpeed = -ySpeed * acc;
  } else if (y < 25) {
    ySpeed = -ySpeed * acc;
  }
  y += ySpeed;
  
  // hidden call to render();
}

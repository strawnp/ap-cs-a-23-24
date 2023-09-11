float x;
float y;
float xChange;
float yChange;

void setup() {
  size(640, 360);
  
  x = width / 2;
  y = height / 2;
  xChange = (float) Math.random() * 10 + 5;
  yChange = (float) Math.random() * 10 + 5;
}

void draw() {
  background(255);
  stroke(0);
  fill(100);
  ellipse(x, y, 50, 50);
  
  x += xChange;
  y += yChange;
  
  if (x > width  - 25) {
    xChange = -xChange;
  } else if (x < 25) {
    xChange = -xChange;
  }
  
  if (y > height  - 25) {
    yChange = -yChange;
  } else if (y < 25) {
    yChange = -yChange;
  }
}

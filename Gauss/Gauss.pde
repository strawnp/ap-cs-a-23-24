import java.util.*;

Random generator;

void setup() {
  size(640, 360);
  background(255);
  generator = new Random();
}

void draw() {
  // cast result to a float since it returns a double by default
  
  // generate number for location
  float num = (float) generator.nextGaussian();
  float sd = 120;
  float mean = 320;
  float x = num * sd + mean;
  
  // generate number for size
  float num2 = (float) generator.nextGaussian();
  float size = num2 * 20 + 10;
  
  noStroke();
  fill(100, 10);
  ellipse(x, height / 2, size, size);
}

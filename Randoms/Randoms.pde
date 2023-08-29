import java.util.*;

Random generator;
float t;

int timer;

void setup() {
  size(640,360);
  background(255);
  generator = new Random();
  t = 100;
  timer = 0;
}

void draw() {
  noStroke();
  fill(50, 5);
  
  // method 1: Math.random() --> [0.0, 1.0)
  float x1 = (float) (Math.random() * 560 + 40);
  ellipse(x1, 120, 40, 40);
  
  // method 2: normal distro
  float num = (float) generator.nextGaussian();
  float mean = 320;
  float sd = 70;
  float x2 = num * sd + mean;
  ellipse(x2, 220, 40, 40);
  
  // method 3: Perlin noise
  float value = noise(t);
  float x3 = map(value, 0, 1, 40, 600);
  ellipse(x3, 320, 40, 40);
  t += 0.01;
  
  timer++;
  
  if (timer > 900) {
    timer = 0;
    background(255);
  }
}

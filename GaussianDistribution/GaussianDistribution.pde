import java.util.*;

Random generator;

int[] randomCounts;

void setup() {
  size(640, 240);
  randomCounts = new int[101];
  generator = new Random();
}

void draw() {
  background(255);
  
  // uniform distro
  // int index = (int) (Math.random() * randomCounts.length);
  
  // normal distro
  float num = (float) generator.nextGaussian();
  float sd = 15;
  float mean = 50;
  
  int index = (int) (num * sd + mean);
  
  if (index >= randomCounts.length) {
    index = randomCounts.length - 1;
  } else if (index < 0) {
    index = 0;
  }
  
  randomCounts[index]++;
  
  stroke(0);
  fill(175);
  
  int w = width / randomCounts.length;
  
  for (int x = 0; x < randomCounts.length; x++) {
    rect(x * w, height - randomCounts[x], w - 1, randomCounts[x]);
  }
}

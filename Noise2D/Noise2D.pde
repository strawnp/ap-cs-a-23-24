// Daniel Shiffman
// The Nature of Code
// http://natureofcode.com

float increment = 0.005;
float xoff = 0.0;
float yoff = 0.0;

void setup() {
  size(640,360);
  frameRate(10);
  //noLoop();
}

void draw() {
  background(0);
  
  // Optional: adjust noise detail here
  noiseDetail(8,0.65f);
  
  loadPixels();

  xoff += 0.01; // Start xoff at 0
  yoff += 0.01;
  
  // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
  for (int x = 0; x < width; x++) {
    xoff += increment;   // Increment xoff 
    float yoff = 0.0;   // For every xoff, start yoff at 0
    for (int y = 0; y < height; y++) {
      yoff += increment; // Increment yoff
      
      // Calculate noise and scale by 255
      float bright1 = noise(xoff,yoff) * 40;
      float bright2 = noise(xoff,yoff) * 100 + 50;
      float bright3 = noise(xoff,yoff) * 100 + 155;

      // Try using this line instead
      // float bright = random(0,255);
      
      // Set each pixel onscreen to a grayscale value
      pixels[x+y*width] = color(bright1, bright2, bright3);
    }
  }
  
  updatePixels();
}

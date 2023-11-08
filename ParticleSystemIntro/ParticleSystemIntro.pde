ProgressBar pb;
ParticleSystem p;

void setup() {
  size(500, 500);
  pb = new ProgressBar();
  p = new ParticleSystem();
}

void draw() {
  background(100);
  
  p.run();
}

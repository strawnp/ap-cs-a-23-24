ProgressBar pb;
ArrayList<ParticleSystem> p;

void setup() {
  size(500, 500);
  pb = new ProgressBar();
  p = new ArrayList<>();
  p.add(new ParticleSystem());
}

void draw() {
  background(100);
  
  for (ParticleSystem s : p) {
    s.run();
  }
}

void mousePressed() {
  p.add(new ParticleSystem(mouseX, mouseY));
}

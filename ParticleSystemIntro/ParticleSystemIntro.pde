ProgressBar pb;
ArrayList<Particle> ps;

void setup() {
  size(500, 500);
  pb = new ProgressBar();
  ps = new ArrayList<>();
}

void draw() {
  background(100);
  
  //pb.run();
  
  for (Particle p : ps) {
    p.run();
  }
  println(ps.size());
}

void mousePressed() {
  Particle p = new Particle(new PVector(mouseX, mouseY));
  
  ps.add(p);
}

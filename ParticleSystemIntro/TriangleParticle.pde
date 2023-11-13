public class TriangleParticle extends Particle {  
  public TriangleParticle(PVector l) {
    super(l);
  }
  
  // override the parent's display() method
  public void display() {
    noStroke();
    fill(super.c, super.lifespan);
    rectMode(CENTER);
    rect(super.location.x, super.location.y, 24, 24);
  }
}

public class TriangleParticle extends Particle {  
  public TriangleParticle(PVector l) {
    super(l);
  }
  
  public void display() {
    noStroke();
    fill(super.c, super.lifespan);
    triangle(super.location.x, super.location.y, super.location.x - 12, super.location.y + 24, super.location.x + 12, super.location.y + 24);
  }
}

public class SquareParticle extends Particle {  
  // WHAT GETS INHERITED:
  // public instance variables
  // public, non-constructor methods
  
  public SquareParticle(PVector l) {
    // EVERY SUBCLASS MUST CALL A CONSTRUCTOR FROM ITS PARENT'S CLASS
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

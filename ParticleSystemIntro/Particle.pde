public class Particle {
  private PVector location;
  private PVector velocity;
  private PVector acceleration;
  private float lifespan;
  
  public Particle(PVector l) {
    acceleration = new PVector(0, 0.05);
    velocity = new PVector(random(-1, 1), random(-2, 0));
    location = l.copy();
    lifespan = 255;
  }
  
  public void run() {
    update();
    display();
  }
  
  private void update() {
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.5;
  }
  
  private void display() {
    stroke(255, 0, 0, lifespan);
    fill(255, 0, 0, lifespan);
    ellipse(location.x, location.y, 24, 24);
  }
  
  public boolean isDead() {
    if (lifespan < 0) {
      return true;
    } else {
      return false;
    }
  }
}

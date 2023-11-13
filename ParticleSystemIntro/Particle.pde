public class Particle {
  private PVector location;
  private PVector velocity;
  private PVector acceleration;
  private float lifespan;
  private color c;
  
  public Particle(PVector l) {
    acceleration = new PVector(0, 0.04);
    velocity = new PVector(random(-5, 5), random(-6, 0));
    location = l.copy();
    lifespan = 255;
    c = color(random(255), random(255), random(255));
  }
  
  public void run() {
    update();
    display();
  }
  
  private void update() {
    /*
    if (location.y > height - 12) {
      location.y = height - 12;
      velocity.y *= -0.8;
    } else if (location.y < 12) {
      location.y = 12;
      velocity.y *= -0.8;
    }
    if (location.x < 12) {
      location.x = 12;
      velocity.x *= -0.8;
    } else if (location.x > width - 12) {
      location.x = width - 12;
      velocity.x *= -0.8;
    }
    */
    
    velocity.add(acceleration);
    location.add(velocity);
    lifespan -= 1.5;
  }
  
  private void display() {
    noStroke();
    fill(c, lifespan);
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

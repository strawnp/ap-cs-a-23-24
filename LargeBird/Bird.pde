public class Bird {
  private PVector location;
  private PVector velocity;
  private PVector acceleration;
  
  public Bird(int x, int y) {
    location = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
  }
  
  public void applyForce(PVector f) {
    acceleration.add(f);
  }
  
  public void display() {
    fill(255, 255, 0);
    ellipse(location.x, location.y, 100, 100);
    fill(255, 0, 0);
    textSize(32);
    text("L: " + location.y, 0, 40);
    text("V: " + velocity.y, 0, 80);
    text("A: " + acceleration.y, 0, 120);
  }
  
  public void update() {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
}

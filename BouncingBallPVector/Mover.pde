public class Mover {
  PVector location;
  PVector velocity;

  public Mover() {
    location = new PVector(random(width), random(height));
    velocity = new PVector(random(30), random(30));
  }

  public void update() {
    location.add(velocity);
    checkEdges();
  }

  public void display() {
    stroke(0);
    fill(100);
    ellipse(location.x, location.y, 50, 50);
  }

  private void checkEdges() {
    checkEdgeX();
    checkEdgeY();
  }

  private void checkEdgeX() {
    if (location.x > width - 25 || location.x < 25) {
      if (location.x > width - 25) {
        location.x = width - 25;
      } else {
        location.x = 25;
      }
      velocity.x *= -1;
    }
  }

  private void checkEdgeY() {
    if (location.y > height - 25 || location.y < 25) {
      if (location.y > height - 25) {
        location.y = height - 25;
      } else {
        location.y = 25;
      }
      velocity.y *= -1;
    }
  }
}

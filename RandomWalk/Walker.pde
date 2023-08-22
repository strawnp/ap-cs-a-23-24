public class Walker {
  // data (instance variables)
  // private == access modifier
  // data can only be seen from within this class
  private int x;
  private int y;

  // functionality (methods)
  // actions performed by our object
  // first method is always a constructor
  // constructor's job == initialize all instance variables
  public Walker(int x, int y) {
    this.x = x;
    this.y = y;
  }

  public void display() {
    stroke(this.x, this.y, this.x + this.y);
    ellipse(this.x, this.y, 30, 30);
  }

  public void step() {
    int moveChance = (int) (Math.random() * 5);

    if (moveChance == 0) {
      if (mouseX < this.x) {
        this.x--;
      } else {
        this.x++;
      }
      if (mouseY < this.y) {
        this.y--;
      } else {
        this.y++;
      }
    } else {
      // moving in 8 directions or staying put
      int stepX = (int) (Math.random() * 3) - 1;
      int stepY = (int) (Math.random() * 3) - 1;

      this.x += stepX;  // this.x = this.x + stepX;
      this.y += stepY;
    }
    // moving in one of four directions
    //int choice = (int) (Math.random() * 4);
    //if (choice == 0) {
    //  x++;
    //} else if (choice == 1) {
    //  x--;
    //} else if (choice == 2) {
    //  y++;
    //} else {
    //  y--;
    //}
  }
}

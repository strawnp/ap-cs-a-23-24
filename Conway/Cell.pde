public class Cell {
  private boolean isAlive;
  
  public Cell() {
   setRandom();
  }
  
  public void setRandom() {
    if (Math.random() < 0.25) {
     isAlive = true;
   } else {
     isAlive = false;
   }
  }
  
  public Cell(boolean living) {
    isAlive = living;
  }
  
  public boolean isAlive() {
    return isAlive;
  }
  
  public void setLiving(boolean alive) {
    isAlive = alive;
  }
  
  public void toggle() {
    isAlive = !isAlive;
  }
}

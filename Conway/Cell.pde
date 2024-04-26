public class Cell {
  private boolean isAlive;
  
  public Cell() {
   if (Math.random() < 0.4) {
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
  
  public void toggle() {
    isAlive = !isAlive;
  }
}

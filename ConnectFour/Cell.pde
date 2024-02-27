public class Cell {
  private boolean isOccupied;
  private int player;
  
  public Cell() {
    isOccupied = false;
    player = 0;
  }
  
  public boolean isOccupied() {
    return isOccupied;
  }
  
  public int getPlayer() {
    return player;
  }
  
  public void toggle(int currentPlayer) {
    isOccupied = !isOccupied;
    player = currentPlayer;
  }
}

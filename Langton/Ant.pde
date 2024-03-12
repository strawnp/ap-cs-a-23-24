public class Ant {
  private final int NORTH = 1;
  private final int EAST = 2;
  private final int SOUTH = 3;
  private final int WEST = 4;
  
  private int direction;
  private int row;
  private int col;
  
  public Ant(int row, int col) {
    direction = NORTH;
    
    this.row = row;
    this.col = col;
  }
  
  public int getAntRow() {
    return row;
  }
  
  public int getAntCol() {
    return col;
  }
  
  public int getDirection() {
    return direction;
  }
  
  public void turnLeft() {
    direction--;
    
    if (direction == 0) {
      direction = WEST;
    }
  }
  
  public void turnRight() {
    direction++;
    if (direction == 5) {
      direction = NORTH;
    }
  }
  
  public void moveForward() {
    if (direction == NORTH) {
      row--;
    } else if (direction == EAST) {
      col++;
    } else if (direction == SOUTH) {
      row++;
    } else if (direction == WEST) {
      col--;
    }
  }
}

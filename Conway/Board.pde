public class Board {
  private Cell[][] currentGen;
  private Cell[][] nextGen;
  
  public Board(int numRow, int numCol) {
    currentGen = new Cell[numRow][numCol];
    nextGen = new Cell[numRow][numCol];
    
    for (int i = 0; i < numRow; i++) {
      for (int j = 0; j < numCol; j++) {
        currentGen[i][j] = new Cell();
      }
    }
  }
  
  public void step() {
    for (int i = 0; i < currentGen.length; i++) {
      for (int j = 0; j < currentGen[i].length; j++) {
        // count neighbors of each Cell
        int numNeighbors = countNeighbors(i, j);
        
        // set nextGen at [i][j] based on current status and neighbor count
        if (currentGen[i][j].isAlive()) {
          if (numNeighbors == 2 || numNeighbors == 3) {
            nextGen[i][j] = new Cell(true);
          } else {
            nextGen[i][j] = new Cell(false);
          }
        } else {
          if (numNeighbors == 3) {
            nextGen[i][j] = new Cell(true);
          } else {
            nextGen[i][j] = new Cell(false);
          }
        }
      }
    }
    
    for (int i = 0; i < currentGen.length; i++) {
      for (int j = 0; j < currentGen[i].length; j++) {
        currentGen[i][j] = nextGen[i][j];
      }
    }
  }
  
  private int countNeighbors(int row, int col) {
    int count = 0;
    
    // N
    if (row > 0 && currentGen[row - 1][col].isAlive()) {
      count++;
    }
    // NE
    if (row > 0 && col < currentGen[row].length - 1 && currentGen[row - 1][col + 1].isAlive()) {
      count++;
    }
    // E
    if (col < currentGen[row].length - 1 && currentGen[row][col + 1].isAlive()) {
      count++;
    }
    // SE
    if (row < currentGen.length - 1 && col < currentGen[row].length - 1 && currentGen[row + 1][col + 1].isAlive()) {
      count++;
    }
    // S
    if (row < currentGen.length - 1 && currentGen[row + 1][col].isAlive()) {
      count++;
    }
    // SW
    if (row < currentGen.length - 1 && col > 0 && currentGen[row + 1][col - 1].isAlive()) {
      count++;
    }
    // W
    if (col > 0 && currentGen[row][col - 1].isAlive()) {
      count++;
    }
    // NW
    if (row > 0 && col > 0 && currentGen[row - 1][col - 1].isAlive()) {
      count++;
    }
    
    return count;
  }
  
  public void display() {
    for (int i = 0; i < currentGen.length; i++) {
      for (int j = 0; j < currentGen[i].length; j++) {
        if (currentGen[i][j].isAlive()) {
          fill(0);
        } else {
          fill(255);
        }
        stroke(0);
        rect(j * 8, i * 8, 8, 8);
      }
    }
  }
  
  public void toggle(int row, int col) {
    currentGen[row][col].toggle();
  }
}

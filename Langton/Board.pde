public class Board {
  private Cell[][] board;
  private Ant antony;
  
  public Board(int numRow, int numCol) {
    board = new Cell[numRow][numCol];
    antony = new Ant(numRow / 2, numCol / 2);
    
    for (int i = 0; i < numRow; i++) {
      for (int j = 0; j < numCol; j++) {
        board[i][j] = new Cell();
      }
    }
  }
  
  public void step() {
    int antRow = antony.getAntRow();
    int antCol = antony.getAntCol();
    
    if (board[antRow][antCol].hasLightOn()) {
      antony.turnRight();
    } else {
      antony.turnLeft();
    }
    board[antRow][antCol].toggle();
    antony.moveForward();
  }
  
  public void display() {
    int antRow = antony.getAntRow();
    int antCol = antony.getAntCol();

    for (int i = 0; i < board.length; i++) {
      for (int j = 0; j < board[i].length; j++) {
        if (board[i][j].hasLightOn()) {
          fill(255);
        } else {
          fill(0);
        }
        stroke(0);
        rect(8 * j, 8 * i, 8, 8);
        if (i == antRow && j == antCol) {
          ellipseMode(CORNER);
          ellipse(8 * j, 8 * i, 8, 8);
        }
      }
    }
  }
}

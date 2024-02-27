public class Grid {
  // declares 2D array of Cells
  private Cell[][] rooms;
  private boolean gameOver;

  public Grid(int numRow, int numCol) {
    // creates 2D array of Cells
    rooms = new Cell[numRow][numCol];
    gameOver = false;

    // initializes every Cell object in the 2D array
    // iterate over every row
    for (int i = 0; i < rooms.length; i++) {
      // iterate over every column in row i
      for (int j = 0; j < rooms[i].length; j++) {
        rooms[i][j] = new Cell();
      }
    }
  }

  public void display() {
    for (int i = 0; i < rooms.length; i++) {
      for (int j = 0; j < rooms[i].length; j++) {
        fill(0, 0, 255);
        rect(j * 100, i * 100, 100, 100);
        // if unoccupied, fill white
        // else, fill red
        if (rooms[i][j].isOccupied()) {
          if (rooms[i][j].getPlayer() == 1) {
            fill(255, 0, 0);
          } else {
            fill(255, 255, 0);
          }
        } else {
          fill(255);
        }
        ellipse(j * 100 + 50, i * 100 + 50, 72, 72);
      }
    }
  }

  public boolean isFull(int col) {
    return rooms[0][col].isOccupied();
  }

  public void addChipToCol(int col, int player) {
    boolean foundEmpty = false;
    int currentRow = 5;

    while (!foundEmpty) {
      if (rooms[currentRow][col].isOccupied()) {
        currentRow--;
      } else {
        rooms[currentRow][col].toggle(player);
        foundEmpty = true;
      }
    }
    
    if (checkForWin(player, currentRow, col)) {
      gameOver = true;
    }
  }
  
  public boolean checkForWin(int player, int row, int col) {
    if (verticalWinCheck(player, row, col)) {
      println("VICTORY!");
      return true;
    } else {
      return false;
    }
  }
  
  public boolean verticalWinCheck(int player, int row, int col) {
    int streak = 1;
    for (int i = row + 1; i < rooms.length; i++) {
      if (rooms[i][col].getPlayer() != player) {
        return false;
      } else {
        streak++;
      }
    }
    return streak >= 4;
  }

  public boolean dropChip(int mX, int player) {
    int clickedCol = mX / 100;
    if (isFull(clickedCol)) {
      return false;
    } else {
      addChipToCol(clickedCol, player);
      return true;
    }
  }
}

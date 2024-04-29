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

  public void drawGliderGun() {
    int[][] gliderGun = {
      {1, 5}, {1, 6}, {2, 5}, {2, 6},
      {11, 5}, {11, 6}, {11, 7}, {12, 4}, {12, 8}, {13, 3}, {13, 9}, {14, 3}, {14, 9}, {15, 6},
      {16, 4}, {16, 8}, {17, 5}, {17, 6}, {17, 7}, {18, 6},
      {21, 3}, {21, 4}, {21, 5}, {22, 3}, {22, 4}, {22, 5}, {23, 2}, {23, 6}, {25, 1}, {25, 2},
      {25, 6}, {25, 7}, {35, 3}, {35, 4}, {36, 3}, {36, 4}
    };

    for (int[] cell : gliderGun) {
      currentGen[cell[0]][cell[1]].setLiving(true);
    }
  }

  public void drawPulsar() {
    int[][] pulsar = {
      {1, 3}, {1, 4}, {1, 5}, {1, 9}, {1, 10}, {1, 11},
      {3, 1}, {3, 6}, {3, 8}, {3, 13},
      {4, 1}, {4, 6}, {4, 8}, {4, 13},
      {5, 1}, {5, 6}, {5, 8}, {5, 13},
      {6, 3}, {6, 4}, {6, 5}, {6, 9}, {6, 10}, {6, 11},
      {8, 3}, {8, 4}, {8, 5}, {8, 9}, {8, 10}, {8, 11},
      {9, 1}, {9, 6}, {9, 8}, {9, 13},
      {10, 1}, {10, 6}, {10, 8}, {10, 13},
      {11, 1}, {11, 6}, {11, 8}, {11, 13},
      {13, 3}, {13, 4}, {13, 5}, {13, 9}, {13, 10}, {13, 11}
    };

    for (int[] cell : pulsar) {
      currentGen[cell[0]][cell[1]].setLiving(true);
    }
  }

  public void drawAcorn() {
    int[][] acorn = {
      {2, 4}, {3, 2}, {3, 4}, {5, 3}, {6, 4}, {7, 4}, {8, 4}
    };

    for (int[] cell : acorn) {
      currentGen[cell[0]][cell[1]].setLiving(true);
    }
  }

  public void drawSimkinsGliderGun() {
    int[][] simkinsGliderGun = {
      {1, 2}, {1, 3}, {2, 2}, {2, 3}, {11, 1}, {11, 2}, {11, 3}, {12, 4}, {12, 5}, {13, 0}, {13, 6},
      {14, 0}, {14, 1}, {14, 5}, {14, 6}, {15, 3}, {16, 1}, {16, 2}, {16, 3}, {17, 2}, {17, 3}, {17, 4},
      {18, 3}, {21, 4}, {21, 5}, {21, 6}, {22, 4}, {23, 5}, {26, 1}, {26, 2}, {27, 1}, {27, 2}
    };

    for (int[] cell : simkinsGliderGun) {
      currentGen[cell[0]][cell[1]].setLiving(true);
    }
  }

  public void drawHWSS() {
    int[][] hwss = {
      {1, 1}, {1, 4}, {2, 5}, {3, 1}, {3, 5}, {4, 2}, {4, 3}, {4, 4}, {4, 5}
    };

    for (int[] cell : hwss) {
      currentGen[cell[0]][cell[1]].setLiving(true);
    }
  }

  public void drawPentadecathlon() {
    int[][] pentadecathlon = {
      {1, 2}, {1, 3}, {1, 4}, {2, 2}, {2, 3}, {2, 4}, {3, 2}, {3, 3}, {3, 4}, {4, 2}, {4, 3}, {4, 4},
      {5, 2}, {5, 3}, {5, 4}, {6, 2}, {6, 3}, {6, 4}, {7, 2}, {7, 3}, {7, 4}, {8, 2}, {8, 3}, {8, 4}
    };

    for (int[] cell : pentadecathlon) {
      currentGen[cell[0]][cell[1]].setLiving(true);
    }
  }


  public void clearBoard() {
    for (int i = 0; i < currentGen.length; i++) {
      for (int j = 0; j < currentGen[i].length; j++) {
        currentGen[i][j].setLiving(false);
      }
    }
  }
  
  public void refill() {
    for (int i = 0; i < currentGen.length; i++) {
      for (int j = 0; j < currentGen[i].length; j++) {
        currentGen[i][j].setRandom();
      }
    }
  }
}

Grid g;
int currentPlayer;

void setup() {
  size(700, 600);
  g = new Grid(6, 7);
  currentPlayer = 1;
}

void draw() {
  g.display();
}

void mousePressed() {
  if (g.dropChip(mouseX, currentPlayer)) {
    currentPlayer = currentPlayer == 1 ? 2 : 1;
  } else {
    println("Invalid move.");
  }
}

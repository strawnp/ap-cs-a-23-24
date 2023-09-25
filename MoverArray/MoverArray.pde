// declare an array of 100 Mover objects
Mover[] movers = new Mover[100];

void setup() {
  size(960, 480);
  for (int i = 0; i < movers.length; i++) {
    // initialize every object in the array of Movers
    movers[i] = new Mover();
  }
}

void draw() {
  //background(255);
  
  PVector wind = new PVector(0.05, 0);
  PVector gravity = new PVector(0, 0.25);
  
  // apply forces to every object
  for (int i = 0; i < movers.length; i++) {
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
}

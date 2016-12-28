Mover[] movers = new Mover[15];

void setup() {

  size(800,600);
  smooth();
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(0,width),random(-1000,0)); 
  }
}

void draw() {
  frameRate(30);
    background(0);
  
  for (int i = 0; i < movers.length; i++) {
    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }

}
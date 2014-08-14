// Vectors: What is force? Exercise 2.2, 
// Daniel Shiffman - The Nature of Code lectures
// http://vimeo.com/channels/natureofcode/59028633

Mover m;

void setup() {
  size(640, 360);
  m = new Mover();
}

void draw(){
  background(255);
  
  PVector force = new PVector(0.1,0.3);
  m.applyForce(force);
  
  m.update();
  m.edges();
  m.display();
}

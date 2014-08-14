// Vectors: Acceleration Exercise
// Daniel Shiffman - The Nature of Code lectures
// http://vimeo.com/channels/natureofcode/58943393

Mover m;

void setup() {
  size(640, 360);
  m = new Mover();
}

void draw(){
  background(255);
  m.update();
  //m.edges();
  m.display();
}

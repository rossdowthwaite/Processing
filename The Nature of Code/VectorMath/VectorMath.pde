// PVectors Math Exercise
// Daniel Shiffman - The Nature of Code lectures
// http://vimeo.com/channels/natureofcode/58943394

void setup() {
  size(500, 300);
}

void draw() {
  background(255);
  strokeWeight(2);
  stroke(0);
  noFill();
  
  translate(width/2, height/2);
  ellipse(0,0,4,4);
  
  PVector mouse = new PVector(mouseX, mouseY);
  PVector center = new PVector(width/2, height/2);
  
  // Subract the vectors  
  mouse.sub(center);
  
  // scale the vector by 2
  mouse.mult(0.5);
  
  // mag function
  // float m = mouse.mag();
  // fill(255, 0, 0);
  // rect(0,0,m,20);
  
  // normalize
  // mouse.normalize();
  // mouse.mult(50);
  
  // quicker way of doing the normalize and mult process above:
  mouse.setMag(50);
  
  // draw a line between the 2 vectors
  line(0, 0, mouse.x, mouse.y);
  
  // line(center.x, center.y, mouse.x, mouse.y );
}

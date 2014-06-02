// Random Walker 2
// Exercise from the Daniel Shiffman Lectures - The Nature of Code
// http://vimeo.com/channels/natureofcode/58492076
// Perlin Noise.

float t  = 0;

void setup(){
  size(600, 400);
  // frameRate(10);
}

void draw(){
  background(0);
  fill(255);
  
  // float x = random(width);
  
  t = t + 0.01;
  
  // noise is enforces a range of 0 - 1
  float x = noise(t);
  x = map(x, 0, 1, 0, width);
  ellipse(x, height/2,40,40);
}




// Random Walker 2
// expanded from the Daniel Shiffman Lectures - The Nature of Code
// Intro 1.3 - Gaussian Distribution.

import java.util.Random;

Random generator;

void setup(){
  size(400, 400);
  generator = new Random();
}

void draw() {
  background(255);
  
  float h = (float) generator.nextGaussian();
  h = h * 10; // standard deviation of 10 - stretch it;
  h = h + 100; // mean of 100, move it;
  
  fill(0);
  ellipse(width/2, height/2,h,h);
  
}

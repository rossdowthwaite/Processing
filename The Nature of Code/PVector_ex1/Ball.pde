// PVectors Exercise
// Daniel Shiffman - The Nature of Code lectures
// http://vimeo.com/channels/natureofcode/58943395

class Ball {
  PVector location;
  PVector velocity;

  Ball() {
    location = new PVector(width/2, height/2);
    velocity = new PVector(2.5, -2);
  }
  
  void move() {
    location.add(velocity);
  }
   
   void bounce() {
     if((location.x > width) || (location.x < 0)){
       velocity.x = velocity.x * -1;
     }
     if((location.y > height) || (location.y < 0)){
       velocity.y = velocity.y * -1;
     }
   }
   
   void display(){
      // Display circle at x location
      stroke(0);
      smooth();
      strokeWeight(2);
      fill(127);
      ellipse(location.x, location.y, 48, 48);
   }
  
  }


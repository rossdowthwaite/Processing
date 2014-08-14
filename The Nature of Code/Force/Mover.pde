class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover(){
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);  
    acceleration = new PVector(0,0);
  }

  void update() {
    // acceleration is the change is velocity over time.
    velocity.add(acceleration);
   
    // velocity is the change in location over time.
    location.add(velocity);
    
    // limit the speed to so doesnt get out of control
    // velocity.limit(5);
  }
  
  void edges(){
    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    }
  }
  
  // newtons 2nd Law
  void applyForce(PVector f){
    acceleration = f;
  }
  
  void display() {
      stroke(0);
      smooth();
      strokeWeight(2);
      fill(127);
      ellipse(location.x, location.y, 48, 48);
  }
}

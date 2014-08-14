class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  
  Mover(){
    location = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    //-- constant acceleration    
    acceleration = new PVector(0,0);
  }

  void update() {
    //-- random acceleration    
    // acceleration = PVector.random2D();
    
    // set the mouse vector in the update to it gets reset everytime
    PVector mouse = new PVector(mouseX, mouseY);
    
    // subtract the location from the mouse to get the new vector between
    // the two vectors
    mouse.sub(location);
    
    // set normalize and set mag to avoid teleportation
    mouse.setMag(0.2);
    
    // set the mouse vector as the acceleration
    acceleration = mouse;
    
    // add the acc the the vel
    velocity.add(acceleration);
    
    // add the vel to the loc
    location.add(velocity);
    
    // limit the speed to so doesnt get out of control
    velocity.limit(5);
  }
  
  void edges(){
    if (location.x > width)   location.x = 0;
    if (location.x < 0)       location.x = width;
    if (location.y > height)  location.y = 0;
    if (location.y < 0)       location.y = height; 
  }
  
  void display() {
      stroke(0);
      smooth();
      strokeWeight(2);
      fill(127);
      ellipse(location.x, location.y, 48, 48);
  }
}

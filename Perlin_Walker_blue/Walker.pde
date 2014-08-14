class Walker 
{
  int r, g, b;
  boolean dir = true;
  float x, y;
  float tx, ty;
  int rad;
  PImage photo;

  // 
  Walker(int tX, int tY, int rad){
    this.rad = rad; // diameter
    randomColor();
    tx = tX;
    ty = tY;
  }
 
  void render(){
    
    changeBlue();
    x = map(noise(tx), 0, 1, -400, width+400);
    y = map(noise(ty),0,1, -400, height + 400);
    
    tx += random(0.05);
    ty += random(0.05);
    
    
    ellipse(x, y, rad, rad);
    fill(r, g, b);
    strokeWeight(2);
    noStroke();
  }

  
  void randomColor(){
    b = int(random(255));
    g = int(random(255));
    r = int(random(255));
  }
  
  void changeRed(){
    if(dir == true){
      if(r < 255) {
        r++;
      } else {
        dir = false;
      };
    };
    
    if(dir == false){
      if(r > 0) {
        r--;
      } else {
        dir = true;
      };
    };
  };
  void changeBlue(){
    if(dir == true){
      if(b < 255) {
        b++;
      } else {
        dir = false;
      };
    };
    
    if(dir == false){
      if(b > 0) {
        b--;
      } else {
        dir = true;
      };
    };
  };
  void change(){
    if(dir == true){
      if(r < 255) {
        r++;
      } else {
        dir = false;
      };
    };
    
    if(dir == false){
      if(r > 0) {
        r--;
      } else {
        dir = true;
      };
    };
  };
}

class Walker 
{
  int x, y, r, g, b;
  boolean dir = true;

  Walker(int startX, int startY){
    randomColor();
    x = startX;
    y = startY;
  }
 
  void render(){
    int wi = int(random(40));
    
    ellipse(x, y, 40 + wi, 40 + wi);
    fill(r, g, b);
    strokeWeight(0);
  }

  void step(){
    float stepx = random(-1, 2);
    float stepy = random(-1, 2);
    
    x += stepx;
    y += stepy;
    
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
  
  void randomColor(){
    r = int(random(255));
    g = int(random(255));
    b = int(random(255));
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

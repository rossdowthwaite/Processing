class Walker 
{
  int r, g, b;
  boolean dir = true;
  float x, y;
  float tx, ty;

  Walker(int tX, int tY){
    randomColor();
    tx = tX;
    ty = tY;
  }
 
  void render(){
    int wi = int(random(40));
    
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty),0,1,0, height);
    
    tx +=  0.01;
    ty +=  0.02;
    
    
    ellipse(x, y, 50, 50);
    fill(r, g, b);
    strokeWeight(2);
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

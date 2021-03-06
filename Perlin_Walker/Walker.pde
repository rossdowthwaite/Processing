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
    
    x = map(noise(tx), 0, 1, -200, width+200);
    y = map(noise(ty),0,1, -200, height + 200);
    
    tx +=  0.01;
    ty +=  0.02;
    
    
    ellipse(x, y, 90, 90);
    fill(0, 0, b);
    strokeWeight(2);
    noStroke();
  }

  
  void randomColor(){
    b = int(random(200, 255));
    //g = int(random(255));
    //r = int(random(255));
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

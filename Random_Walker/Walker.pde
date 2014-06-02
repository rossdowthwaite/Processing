class Walker 
{
  int x, y, r, g, b;
  boolean dir = true;

  Walker(int x, int y){
    randomColor();
    this.x = x;
    this.y = x;
  }
 
  void render(){
    int wi = int(random(40));
    
    ellipse(x, y, 40 + wi, 40 + wi);
    fill(r, g, b);
  }

  void step(){
    int choice = int(random(4));
    int weight = int(random(10));
    
    if (choice == 0) {
      x = x + weight;
    } else if (choice == 1) {
      x = x - weight;
    } else if (choice == 2) {
      y = y + weight;
    } else {
      y = y - weight;
    }
    
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

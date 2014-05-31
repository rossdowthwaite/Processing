class circle
{
  float size;
  float size2;
  boolean linked = false;
  PVector position;
  PVector velocity;
  boolean overCircle;
  boolean expand;
  color c;
  
  circle(float x, float y, float size)
  {
     velocity = new PVector(0, 0);
     position = new PVector(x, y);
     this.size = size;
     size2 = size;
     generateColor();
  }
  
  void move()
  {
    position.add(velocity);
  }
  
  void bounce()
  {
    if(position.y > height+51)
    {
          position.y = -50;
    }
    
    if(position.y < -51)
    {
          position.y = height+50;
    }
    
    if(position.x > width+51)
    {
          position.x = -50;
    }
    
    if(position.x < -51)
    {
          position.x = width+50;
    }
  }
  
  void display()
  {      
     if(size2 >= size*1.3)
     {
       expand = false;
     }
     
     if(size2 <= size)
     {
       expand = true;
     }
    
    if(expand)
    {
      size2++;
    } 
    
    if(!expand)
    {
      size2--;
    }  
    
    fill(c, 140);
    ellipse(position.x, position.y, size2, size2);
    
    fill(c);
    noStroke();
    setVelocity();
    ellipse(position.x, position.y, size, size);
 
  }
  
  void setSize2()
  {
    size2++;
  }
  
  void setSize(int s)
  {
    size = size+s;
  }
  
 void setVelocity()
 {
      velocity.x = ((width/2) - mouseX + size)*-1;
      velocity.x = ((velocity.x/100));
      velocity.y = ((height/2) - mouseY + size)*-1;
      velocity.y = ((velocity.y/100));
 }
 
 PVector getPos()
 {
     return position;
 }
 
 PVector getVel()
 {
     return velocity;
 }
 
 float getSize()
 {
   return size;
 }
  
  void generateColor()
  {
    float r = random(0, 255);
    float g = random(0, 255);
    float b = random(0, 255);
    c = color(r,g,b);
  }
  
  void randomCircle()
  {
    float s = random(5, 150);
    float x = random(0, width); 
    float y = random(0, height);
    
    position.x = x;
    position.y = y;
    size = s;
  }
  
  void link()
  {
      linked = true;
  }
  
  void checkForMouse()
  {
    if( (mouseX > (position.x-size)) && (mouseX < (position.x-size)) && 
      (mouseY > (position.y-size)) && (mouseY < (position.y-size)) )
     {
       overCircle = true;
       println(overCircle);
     } 
     else 
     {
       overCircle = false;
       println(overCircle);
     }
  }
  
  void mousePressed()
 {
  for(int i = 0; i < circleArray.size(); i++)
  {
      if(circleArray.get(i).getSize() < 50)
      {
          circleArray.get(i).setSize(2);
      } else
      {
          circleArray.get(i).setSize(-2);
      }
  }
 }
  
}





int circleCount = 0;
ArrayList<circle> circleArray;
float gravity = 0.05;
float wind = 0;

void setup() 
{
  size(1300, 900);
  circleArray = new ArrayList<circle>();
}

void draw(){
  background(25, 10);
  
  while(circleCount < 10)
  {
    float s = random(5, 100);
    float x = random(0, width); 
    float y = random(0, height);
    
    circleArray.add(new circle(x, y, s));
    circleCount++;
  }
  
  for(int i = 0; i < circleArray.size(); i++)
  {
    circleArray.get(i).move();
    circleArray.get(i).bounce();
    circleArray.get(i).display();
  }
    for(int k = 0; k < circleArray.size(); k++)
  {
      PVector p1 = circleArray.get(k).getPos();
      for(int j = 0; j < circleArray.size(); j++)
      {
          PVector p2 = circleArray.get(j).getPos();
          line(p1.x, p1.y, p2.x, p2.y);
          stroke(255, 30);
          strokeWeight(2); 
           
      } 
  }
} 


 



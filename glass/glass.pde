class circle
{
  float size;
  float size2;
  float firstSize;
  boolean linked = false;
  PVector position;
  PVector velocity;
  boolean overCircle;
  boolean expand;
  color c;
  PImage img;
  
  circle(float x, float y, float size, PImage bgImg)
  {
     velocity = new PVector(0, 0);
     position = new PVector(x, y);
     this.size = size;
     size2 = size;
     firstSize = size;
     img = bgImg;
     
  }
  
  void move()
  {
    position.add(velocity);
    println(velocity.mag());
    if(velocity.mag() > 50)
    {  
      if(size > 5)
      {
        size -= 0.5;
      }
    }
    else
    {
      if(size <= firstSize)
      {
        size += 0.5;
      }
    }
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
    
    
    fill(c, 200);
    noStroke();
    setVelocity();
    image(img, position.x, position.y, size, size);
 
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
      //velocity.x = ((velocity.x*0.1));
      velocity.y = ((height/2) - mouseY + size)*-1;
      //velocity.y = ((velocity.y*0.1));
      velocity.mult(0.1);
      
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
}





int circleCount = 0;
ArrayList<circle> circleArray;
float gravity = 0.05;
float wind = 0;
PImage bg;
PImage[] images = new PImage[13]; //image array


void setup() 
{
  size(1300, 900);
  circleArray = new ArrayList<circle>();
  frameRate(30);
  bg = loadImage("beach.jpg");
  
  images[0] = loadImage("g1.png");
  images[1] = loadImage("g2.png");
  images[2] = loadImage("g3.png");
  images[3] = loadImage("g4.png");
  images[4] = loadImage("g5.png");
  images[5] = loadImage("g6.png");
  images[6] = loadImage("g7.png");
  images[7] = loadImage("g8.png");
  images[8] = loadImage("g9.png");
  images[9] = loadImage("g10.png");
  images[10] = loadImage("g11.png");
  images[11] = loadImage("g12.png");
  images[12] = loadImage("g13.png");
}

void draw(){
  background(bg);
  
  while(circleCount < 120)
  {
    float s = random(5, 100);
    float x = random(0, width); 
    float y = random(0, height);
    float img = random(0, 12);
    int i = int(img);
    
    
    circleArray.add(new circle(x, y, s, images[i]));
    circleCount++;
  }
  
  for(int i = 0; i < circleArray.size(); i++)
  {
    circleArray.get(i).move();
    circleArray.get(i).bounce();
    circleArray.get(i).display();
  }
} 


 



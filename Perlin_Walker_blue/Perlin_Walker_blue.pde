// Random Walker 2
// expanded from the Daniel Shiffman Lectures - The Nature of Code


Walker w;
int count = 0;
ArrayList<Walker> walkerArray;

void setup(){
  // set the size   
  size(1200, 800);
  
  // set up a array to put the walkers in  
  walkerArray = new ArrayList<Walker>();
  
  // create walkers and add them to the array  
  while(count < 60){
    walkerArray.add(new Walker(int(random(5000)), int(random(5000)), int(random(50, 150)) ));
    count++;
  };
  color c = color(255,255,255,0);
  background(c);
  frameRate(25);
}

void draw(){
  color c = color(255,255,255,0.9);
  background(c);
  // step throught the array and call their methods  
  for(int i = 0; i < walkerArray.size(); i++)
  {
    walkerArray.get(i).render();
    // walkerArray.get(i).changeRed();
    // walkerArray.get(i).changeBlue();
    // walkerArray.get(i).changeGreen();
  }
}


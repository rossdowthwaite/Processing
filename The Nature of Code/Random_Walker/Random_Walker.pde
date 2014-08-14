Walker w;
int count = 0;
ArrayList<Walker> walkerArray;

// Random Walker
// expanded from the Daniel Shiffman Lectures - The Nature of Code
// Intro 1.1

void setup(){
  // set the size   
  size(800, 600);
  
  // set up a array to put the walkers in  
  walkerArray = new ArrayList<Walker>();
  
  // create walkers and add them to the array  
  while(count < 10){
    walkerArray.add(new Walker(int(random(700)), int(random(500))));
    count++;
  }
  background(255);
  frameRate(100);
}

void draw(){
  // step throught the array and call their methods  
  for(int i = 0; i < walkerArray.size(); i++)
  {
    walkerArray.get(i).step();
    walkerArray.get(i).render();
    walkerArray.get(i).changeRed();
    // walkerArray.get(i).changeBlue();
    // walkerArray.get(i).changeGreen();
  }
}


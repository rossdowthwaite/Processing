// Random Walker 2
// expanded from the Daniel Shiffman Lectures - The Nature of Code


Walker w;
int count = 0;
ArrayList<Walker> walkerArray;

void setup(){
  // set the size   
  size(800, 600);
  
  // set up a array to put the walkers in  
  walkerArray = new ArrayList<Walker>();
  
  // create walkers and add them to the array  
  while(count < 50){
    walkerArray.add(new Walker(int(random(5000)), int(random(1000))));
    count++;
  };
  background(255);
  frameRate(30);
}

void draw(){
  background(255);
  // step throught the array and call their methods  
  for(int i = 0; i < walkerArray.size(); i++)
  {
    walkerArray.get(i).render();
    walkerArray.get(i).changeRed();
    // walkerArray.get(i).changeBlue();
    // walkerArray.get(i).changeGreen();
  }
}


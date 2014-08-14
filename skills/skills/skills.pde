int cx, cy;
//float levelOne;
//float levelTwo;
//float levelThree;
//float levelFour;
//float levelFive;
float clockDiameter;
float[] levels;
String[] lang;
PFont langFont; 


void setup() {
  size(800, 600);
  
  
  langFont = loadFont("ArialNarrow-48.vlw");
  textFont(langFont, 32);
  fill(0);
  text("OOCH", 0, 0);
  
  
  stroke(255);
  
  levels = new float[5];
  lang = new String[10];
  
  int radius = min(width, height) / 2;
  levels[0] = radius * 0.2;
  levels[1] = radius * 0.4;
  levels[2] = radius * 0.6;
  levels[3] = radius * 0.8;
  //levels[4] = radius * 1;


  lang[0] = "Ruby";
  lang[1] = "Java";
  lang[2] = "HTML";
  lang[3] = "CSS";
  lang[4] = "Javascript";
  lang[5] = "Phaser";
  lang[6] = "Python";
  lang[7] = "Rails";
  lang[8] = "fgf";
  lang[9] = "fgfd";
  
  // center the clock  
  cx = width / 2;
  cy = height / 2;
}

void draw() {
  background(255);
  
  // Draw the clock background
  fill(80);
  noStroke();
  ellipse(cx, cy, clockDiameter, clockDiameter);
  
  
  // Draw the points
  stroke(0);
  strokeWeight(4);
  
  
  beginShape(POINTS);
  for (float level : levels) {
    for (int a = 0; a < 360; a += 36) {
      float angle = radians(a);
      float x = cx + cos(angle) * level;
      float y = cy + sin(angle) * level;
      vertex(x, y);
    }
  }
  endShape();
}

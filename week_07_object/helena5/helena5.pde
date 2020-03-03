HLine h1 = new HLine(20, 2.0); 
HLine h2 = new HLine(20, 2.5);



void setup() 
{
  size(800, 800);
  frameRate(100);
  colorMode(HSB);
}

void draw() { 
  background(0);
  for (int i =0; i<10; i++) 
  h1.update(); 
  h2.update(); 
    stroke(random(255), 255, 255);
} 
 
class HLine { 
  
  float ypos, speed; 
  HLine (float y, float s) {  
    ypos = y; 
    speed = s; 
  } 
  void update() { 
    ypos += speed; 
    if (ypos > width) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 
  } 
} 
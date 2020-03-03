int counter;
boolean click = false;
int x=50;
int y=50;
boolean vita = false;
void setup() { //setup function called initially, only once
  size(600, 800);
  background(0); //set background white
  colorMode(HSB); //set colors to Hue, Saturation, Brightness mode
  counter = 0;
}


void draw() { //draw function loops 
 float d=random(1, 10);
  counter++;
  noStroke();
  fill(random(255), 100, 255, 50);
  if (vita == true) { //add some interaction
    ellipse(random(x, 600), random(y, 800), d, d);
    ellipse(mouseX, mouseY, random(50), random(50));
  } else {
    ellipse(width/2, height/2, 300*sin(counter), 300*sin(counter));
  }
}

void mousePressed(){
  vita = !vita;
}
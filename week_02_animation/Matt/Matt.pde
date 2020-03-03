int x = 0;
int y = 0;
int angle = 0;
void setup() {
  size(800, 800);
  background(50);
}

void draw() {
  translate(width/2, height/2);
  rotate(radians(angle));
  background(0,0,0);
  noStroke();
  smooth();
  fill(50,200,120);

  ellipse(100, 100, 50, 50);
    ellipse(120,60,mouseX,mouseY);
  float mx=mouseX/2+60;
  ellipse(120,60,mx,mouseY);
  for (int y=0; y<=height; y+=40) {
    for (int x=0; x<=width; x+=40) {
  angle++;
  }
  }
}
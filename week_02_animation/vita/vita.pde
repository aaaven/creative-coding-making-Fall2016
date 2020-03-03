
float angle = 0.0;


void setup() {
  size(800, 800);
  background(248, 205, 182);
  smooth();
}


void draw() { 
  translate(400, 400);
  rotate(angle);
  rect(100, 100, 300, 300);
  angle += 5;
  int r = int(map(mouseX, 0, width, 0, 255));
  int g = int(map(mouseY, 0, height, 0, 255));
  fill(r, g, 255+r);
  rect(30+sin(frameCount), 25+cos(frameCount), 23, 23);
  scale(sin(angle)+2);
}
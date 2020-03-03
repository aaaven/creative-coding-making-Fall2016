float angle =0.0;
float offset = -30;
float scalar =130;
float speed =0.06;
int radius =40;
float y =radius;


void setup() {
  size(500, 300);
  smooth();
}


void draw() {
  translate(50, 185);
  background(0);
  int r = int(map(mouseX, 0, width, 0, 255));
  int g = int(map(mouseY, 0, height, 0, 255));
  fill(r, g, 255-r);
  float y1 =offset +sin(angle)*scalar;
  float y2 =offset +sin(angle+0.4)*scalar;
  float y3 =offset +sin(angle+0.8)*scalar;
  float y4 =offset +sin(angle+1.0)*scalar;
  float y5 =offset +sin(angle+1.2)*scalar;
  float y6 =offset +sin(angle+1.4)*scalar;
  float y7 =offset +sin(angle+1.6)*scalar;
  ellipse(80, y1, 40, 40);
  ellipse(120, y2, 40, 40);
  ellipse(160, y3, 40, 40);
  ellipse(200, y4, 40, 40);
  ellipse(240, y5, 40, 40);
  ellipse(280, y6, 40, 40);
  ellipse(320, y7, 40, 40);
  angle +=speed;
}
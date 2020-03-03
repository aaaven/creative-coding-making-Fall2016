float angle =120;
float offset = 100;
float offset2 = 500;
float scalar1 =130;
float scalar2 =130;
float speed =0.03;

void setup() {
  size(600, 300);
  smooth();
}


void draw() {
  translate(0, 130);
  background(0);
  strokeWeight(2);
  stroke(0,random(0,255),255);
  fill(255, random(0,40), 0);
  float y1 =offset +sin(angle)*scalar1;
  float y2 =offset +sin(angle+0.4)*scalar1;
  float y3 =offset +sin(angle+0.8)*scalar1;
  float y4 =offset +sin(angle+1.0)*scalar1;
  float y5 =offset +sin(angle+1.2)*scalar1;
  float y6 =offset +sin(angle+1.4)*scalar1;
  float y7 =offset +sin(angle+1.6)*scalar1;
  line(width/2, height/2, y1, -130);
  line(width/2, height/2, y2, -130);
  line(width/2, height/2, y3, -130);
  line(width/2, height/2, y4, -130);
  line(width/2, height/2, y5, -130);
  line(width/2, height/2, y6, -130);
  line(width/2, height/2, y7, -130);
  float y8 =offset2 -sin(angle)*scalar2;
  float y9 =offset2 -sin(angle+0.4)*scalar2;
  float y10 =offset2 -sin(angle+0.8)*scalar2;
  float y11 =offset2 -sin(angle+1.0)*scalar2;
  float y12=offset2 -sin(angle+1.2)*scalar2;
  float y13 =offset2 -sin(angle+1.4)*scalar2;
  float y14=offset2 -sin(angle+1.6)*scalar2;
  line(width/2, height/2, y8, -130);
  line(width/2, height/2, y9, -130);
  line(width/2, height/2, y10, -130 );
  line(width/2, height/2, y11, -130);
  line(width/2, height/2, y12, -130);
  line(width/2, height/2, y13, -130);
  line(width/2, height/2, y14, -130);
  angle +=speed;
}
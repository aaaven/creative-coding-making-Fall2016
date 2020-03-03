int sat = 40;
int satDir= 1;
float[]x={-100,-50, 0,50,100};
float[]y={-20,-10, 0,10,20};

void setup() {
  size(600, 400);
  background(0);
  smooth();
  noStroke();
  colorMode(HSB, 120);
}

void draw() {
  background(0);
  sat+=satDir;
  if (sat>500 || sat<40) satDir*=-1;
  int index =0;
  fill((frameCount+index)%255, sat, 255);

  x[0]+=0.5;
  x[1]+=1;
  x[2]+=1.5;
  x[3]+=2.0;
  x[4]+=2.5;
  y[0]+=0.5;
  y[1]+=0.5;
  y[2]+=1;
  x[3]+=2.0;
  x[4]+=2.5;
  ellipse(x[0], y[0], 40, 40);
  ellipse(x[0], y[1], 40, 40);
  ellipse(x[0], y[2], 40, 40);
  ellipse(x[0], y[3], 40, 40);
  ellipse(x[0], y[4], 40, 40);
  ellipse(x[1], y[0], 40, 40);
  ellipse(x[1], y[1], 40, 40);
  ellipse(x[1], y[2], 40, 40);
  ellipse(x[1], y[3], 40, 40);
  ellipse(x[1], y[4], 40, 40);
  ellipse(x[2], y[0], 40, 40);
  ellipse(x[2], y[1], 40, 40);
  ellipse(x[2], y[2], 40, 40);
ellipse(x[2], y[3], 40, 40);
ellipse(x[2], y[4], 40, 40);
ellipse(x[3], y[0], 40, 40);
ellipse(x[3], y[1], 40, 40);
ellipse(x[3], y[2], 40, 40);
ellipse(x[3], y[3], 40, 40);
ellipse(x[3], y[4], 40, 40);
ellipse(x[4], y[0], 40, 40);
ellipse(x[4], y[1], 40, 40);
ellipse(x[4], y[2], 40, 40);
ellipse(x[4], y[3], 40, 40);
ellipse(x[4], y[4], 40, 40);
      index++;
}
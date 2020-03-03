float a, angle;

void setup() {
  size(800, 600);
  colorMode(HSB,300);
}


void draw() {
  background(255);
  translate(width/2, height/2);
  strokeWeight(4);
  noFill();
  for (int i = 0; i <20; i++) {
    stroke((int)map(300-15*i,0,300,50,140),200,200);
    scale(sin(angle)+0.05*i);
    ellipse(0, 0, 300-15*i, 300-15*i);
  }
  angle+= 0.1;
}
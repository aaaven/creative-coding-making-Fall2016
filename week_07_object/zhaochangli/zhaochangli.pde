float[] x=new float[10000];

void setup() {
  size(800, 600);
  background(0);
  smooth();
  for (int i =0; i<x.length; i+=15) {
    x[i]=random(-1000, 200);
  }
}
void draw() {
  fill(random(0, 255), random(0, 255), random(0, 255));
  background(0);
  for (int i=0; i<x.length; i+=15) {
    x[i]+=5;
    float y=i*0.4;
    ellipse(y, x[i], 20, 20);
  }
}
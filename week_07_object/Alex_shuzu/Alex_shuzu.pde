float[]x=new float[10];
float[]y=new float[10];
float[]t=new float[10]; 
int s=-1;
void setup() {
  size(600, 600);
  smooth();
  background(0);
  for (int i=0; i<x.length; i+=1) {
    x[i]=random(600); 
    y[i]=random(600);
    t[i]=100;
  }
}
void draw() {
  fill(0, 30); 
  rect(0, 0, 600, 600);
  for (int i=0; i<x.length; i+=1) {
    circle(x[i], y[i], t[i]);
    t[i]+=s ;
    if (t[i]<0||t[i]>100) {
      s=-s;
    } 
    if ( mousePressed) {
      x[i]=mouseX+random(-50, 50);
      y[i]=mouseY+random(-50, 50);
    }
  }
}
void circle(float x, float y, float t) {
  pushMatrix();
  translate(x, y);
  fill(random(255), random(255), random(255), t);
  noStroke();
  ellipse(random(10), random(10), 100, 100);
  popMatrix();
}
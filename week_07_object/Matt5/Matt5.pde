float[]x=new float [2000];


void setup(){
  size(600,600);
  smooth(0);
  noStroke();
  for(int c=0;c<x.length;c++){
  x[c]=random(-2000,100);
  
  
  }
}
void draw(){
  background(0);
  for(int c=0;c<x.length;c++){
    x[c]+=0.5;
    float y=c*0.4;
    rect(x[c],y,40,40);
    fill(random(0,255),random(0,255),random(0,255));
  }
}
int radius=40;
float speed= 0.5;
int startx=20;
//int stopX=160;
float x=startx;
float[]s=new float[3000];
//float pct=0.0;
//float step=0.005;
void setup() {
  size(400, 300);
  smooth();
  fill(236, 201, 72);
  for(int i =0;i<s.length;i++){
    s[i]=random(-1000,200);
  }
}

void draw() {
  background(13, 52, 85);
  for(int i=0;i<s.length;i++){
    s[i]+=0.5;
    float y=i*0.4;
    ellipse(s[i],y,5,5);
  }
  fill(8, 42, 69);
  noStroke();
  arc(350, 275, 180, 180, PI, PI+PI);//mountain3
  fill(47, 138, 198);
  noStroke();
  rect(0, 250, 400, 50);//water
  fill(8, 42, 69);
  noStroke();
  arc(62.5, 250, 120, 120, PI, PI+PI);//mountain1
  fill(8, 42, 69);
  noStroke();
  arc(200, 250, 175, 170, PI, PI+PI);//mountain2
  fill(32, 139, 97);
  noStroke();
  rect(0, 225, 25, 12.5);
  fill(32, 139, 97);
  noStroke();
  ellipse(25, 231.5, 12.5, 12.5);
  fill(32, 139, 97);
  noStroke();
  ellipse(75, 237.5, 12.5, 12.5);
  fill(32, 139, 97);
  noStroke();
  ellipse(100, 237.5, 12.5, 12.5);//little grass left
  fill(255);
  noStroke();
  rect(87.5, 200, 3, 37.5);
  fill(32, 139, 97);
  noStroke();
  ellipse(87.5, 200, 28, 28);//tree1
  fill(255);
  noStroke();
  rect(50, 212.5, 3, 25);
  fill(32, 139, 97);
  noStroke();
  ellipse(50, 212.5, 25, 25);//tree2
  fill(19, 104, 70);
  noStroke();
  rect(0, 237.5, 112.5, 25);
  fill(19, 104, 70);
  noStroke();
  ellipse(112.5, 250, 25, 25);
  fill(19, 104, 70);
  noStroke();
  ellipse(87.5, 237.5, 25, 25);//big grass left
  fill(177, 160, 133);
  noStroke();
  triangle(343.75, 150, 387.5, 237.5, 300, 237.5);
  fill(160, 140, 105);
  noStroke();
  triangle(343.75, 150, 387.5, 237.5, 343.75, 237.5);
  fill(255);
  noStroke();
  triangle(343.75, 150, 362.5, 187.5, 325, 187.5);//mountain white
  fill(32, 139, 97);
  noStroke();
  ellipse(275, 237.5, 18, 18);
  fill(32, 139, 97);
  noStroke();
  ellipse(325, 237.5, 18, 18);
  fill(19, 104, 70);
  noStroke();
  ellipse(300, 237.5, 45, 45);
  fill(19, 104, 70);
  noStroke();
  rect(275, 237.5, 125, 25);
  fill(19, 104, 70);
  noStroke();
  ellipse(275, 250, 25, 25);
  fill(236, 201, 72);
  x+=speed;
  if (x>width+50) {
    x=-50;
  }
  ellipse(x, 60, 50, 50);//moon
  //if (pct<1.0){
    //x=startx+(startx*pct);
    //pct+=step;
 // }
  fill(255);
 //arc(x, 125, 50, 50, PI, PI+PI);//cloud
 //arc(x, 125, 30, 30, PI, PI+PI);
  //arc(x, 125, 30, 30, PI, PI+PI);
  }
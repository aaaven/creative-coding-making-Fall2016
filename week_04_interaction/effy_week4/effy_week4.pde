color btnColor=color(175, 255, 0);
boolean hover=false;
//float[]x =new float[1000];

void setup() {
  size(600, 400);
  smooth();
  noStroke();
  fill(255, 206, 0);
  //for (int i = 0; i<x.length; i++) {
  //x[i]=random(-1000, 200);
}


void draw() {
  background(0);
  //for (int i = 0; i<x.length; i++) {
  //x[i]+=0.5;
  //float y=i*0.4;
  //text("get out", x[i], y);
  int r = int(map(mouseX, 0, width, 0, 255));
  int g = int(map(mouseY, 0, height, 0, 255));
  fill(r, g, 255-r);
  rect(120+sin(frameCount), 0+cos(frameCount), 20, 800);

  int r1 = int(map(mouseX, 10, width, 100, 355));
  int g1 = int(map(mouseY, 10, height, 100, 355));
  fill(r1, g1, 355-r1);
  rect(470+sin(frameCount), 0+cos(frameCount), 20, 800);

  int r2 = int(map(mouseX, 10, width, 150, 400));
  int g2 = int(map(mouseY, 10, height, 150, 225));
  fill(r2, g2, 455-r2);
  rect(0+sin(frameCount), 30+cos(frameCount), 1500, 20);
  fill(r2, g2, 455+r2);
  rect(0+sin(frameCount), 370+cos(frameCount), 1500, 20);
  println(frameCount);
  rectMode(CENTER);
  noStroke();
  //fill(255,206,0);
  fill(btnColor);
  ellipse(300, 200, 300, 300);
  boolean cX = (mouseX>=width/2-100)&&(mouseX<=width/2+100);
  boolean cY = (mouseY>=height/2-75)&&(mouseY<=height/2+75);
  if (cX&&cY) {
    //change color
    btnColor = color(175, 255, 0);
    hover = true;
    fill(0);
    text("get out", mouseX, mouseY);
  } else {
    btnColor = color(255, 206, 0);
    hover = false;
  }

  noStroke();
  fill(255, 255, 255);
  ellipse(230, 130, 80, 50);
  ellipse(370, 130, 80, 50);
  noStroke();
  fill(255, 0, 0);
  arc(300, 277.55, 172.137, 86.069, 0, PI);
  fill(255);
  // line(40,0,70,height);

  if (mousePressed==true) {
    fill(0);
  }
  ellipse(230, 118.8, 28.216, 28.216);
  ellipse(370, 118.8, 28.216, 28.216);
}
//fill(255,255,255);
//float x =offset+cos(angle)*scalar;
//float y =offset+sin(angle)*scalar;
//ellipse(x,y,2,2);
//angle +=speed;
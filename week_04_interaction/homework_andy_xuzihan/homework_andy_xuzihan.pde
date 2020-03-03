color eColor=color(255);
boolean aC=false;
boolean click=false;
float a;
float x;

void setup() {
  size(600, 600);
  background(100);
  noStroke();
}

void draw() {
  ellipseMode(CENTER);
  fill(eColor);
  ellipse(width/2, height/2, 10, 10);
  boolean checkX=mouseX>=width/2-25&&mouseX<=width/2+25;
  boolean checkY=mouseY>=height/2-25&&mouseY<=height/2+25;
  if (checkX&&checkY) {

    eColor=color(255, 0, 0);
    aC=true;
    fill(255);
    strokeWeight(30);
    text("CLICK YOUR MOUSE", width/2-55, height/2+40);
    text("HERE~", width/2-18, height/2+50);
  } else {
    aC=false;
    eColor=color(255);
  }

  if (aC==true&& mousePressed==true) {
    click=true;
  } else click=false;
  if (click==true) {
    translate(width/2, height/2);
    rotate(radians(a));
    ellipse(20*sin(a), 20*sin(a), 10, 10);
    for (int t=0; t<=200; t+=10) {
      ellipse(t, t, 2, 2);
    }
    a++;
  }

    
  }



void mouseClicked() {
  background(160);
  for (int i=5; i<=200; i+=1) {
    int Y=int(random(200, 255));
    int Z=int(random(120, 200));
    int X=int(random(100, 150));
    fill(Y, Z, X);
    rotate(-radians(a*2));
    ellipse(i, i*sin(a), 10, 10);
    ellipse(i, i, 10, 10);
    ellipse(i, i, 5, 5);
    println(radians(a*2));
    
}
pushMatrix();
if((radians(a*2))>=1.6){
  rotate(radians(a*3));
  for(int w=5;w<400;w+=3){
  rect(w*sin(w),w,2,2);
  rect(-w*sin(w),w,5,5);
  rect(w*sin(w),-w,2,2);
  rect(-w*sin(w),-w,5,5);
  }
  popMatrix();
  
}
}
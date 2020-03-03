color btnColor = color(255);
boolean hover = false;
boolean click = false;
void setup() {
  size(800, 800);
  background(0);
  noStroke();
}
void draw() {
  background(0);
  if (key=='A'||key=='a');
  background(100);
  rectMode(CENTER);
  fill(btnColor);
  ellipse(width/2, height/2, 400, 400);
  boolean cX = (mouseX>=width/2-200)&&(mouseX<=width/2+200);
  boolean cY = (mouseY>=height/2-200)&&(mouseY<=height/2+200);
  if (cX&&cY) {
    btnColor = color(255, 0, 0);
    hover = true;
    fill(0);
    text("game over", width/2, height/2);
  } else {
    btnColor = color(255);
    hover = false;
  }
  if (hover == true&& mousePressed == true) {
    click = true;
  } else {
    click  = false;
  }
  if (click == true) {
    fill(0);
    rect(0, 380, 800, 40);
    rect(380, 560, 40, 400);
   
  }
  if (keyPressed){
  if ((key=='A'||key=='a')){
    fill(255);
    ellipse(width/2, height/2-40,50,50);
  
}
  }
}
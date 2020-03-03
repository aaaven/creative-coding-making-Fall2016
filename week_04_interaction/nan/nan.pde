 int x = 50;
int y = 50;
color btnColor = color(255);
boolean hover = false;
boolean click = false;
void setup(){
  
size(500,500);
//background(14,124,158);
noStroke();
}

void draw() {
  background(14,124,158);
  //for (int i =0;i<10; i++){
  //rect(i*247,-21,41,20+317*i);  
//}
  
  
  fill(60,23,23);
  ellipse(width/2,245,300,246);
  
  fill(209,98,115);
  ellipse(width/2,261,300,215);
  
  fill(188,156,116);
  ellipse(width/2,261,300,147);
  
  fill(20,118,142);
  ellipse(245,259,136,136);
  
  float mx = constrain(mouseX,220,270);
  float my = constrain(mouseY,220,270);
  fill(0);//black
  ellipse(mx,my,45,45);
  //float mx = constrain(mouseX,70,230);
  //float my = constrain(mouseY,70,230);
  
  boolean cX = (mouseX>=width/2-50)&&(mouseX<=width/2+50);
  boolean cY = (mouseY>=height/2-25)&&(mouseY<=height/2+25);
  if (cX&&cY) {
    //change color
    btnColor = color(247,241, 20);
   hover = true;
   fill(255);
    text("me", mouseX, mouseY);
  } else {
    btnColor = color(255);
    hover = false;
  }
  
  
   if (hover == true&& mousePressed == true) {
    //mouse click 
    click = true;
  } else {
    click  = false;
  }
  
  if (click == true) {
    
    fill(188,156,116);
    ellipse(0, 0, 100, 100);
    ellipse(width-50/4, 50/4, 100, 100);
    ellipse(50/4, height-50/4, 100, 100);
    ellipse(width - 50/4, height-50/4, 100, 100);
    fill(209,98,115);
    ellipse(50, 50, 75, 75);
    ellipse(width-50, 50, 75, 75);
    ellipse(50, height-50, 75, 75);
    ellipse(width - 50, height-50, 75, 75);
    fill(209,98,115);
    rect(random(0,500),random(0,500),random(10,100),random(5,20));

    //fill(209,98,115);
    //rect(random(0,500),random(0,500),random(10,100),random(5,20));
}
}
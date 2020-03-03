void setup() {
  size(500, 400);
  background(0);
  textSize(64);
}


void draw() {
  if (keyPressed) {
    if ((key=='1')||(key=='I')) {
      fill(227, 166, 20);
      ellipse(60, 80, 20, 20);
      ellipse(280, 280, 20, 20);
      fill(137, 194, 60);
      text('l', 150, 250);
      fill(62, 180, 233);
      textSize(120);
      text('v', 300, 250);
      fill(213, 19, 39);
      text('E', 400, 250);
      fill(220, 198, 27);
      textSize(64);
      text('U', 220, 350);
    }
  }
  if (mousePressed==true) {
    fill(211, 0, 0);
    ellipse(random(50, 70), random(100, 150), 5, 5);
    ellipse(random(200, 250), random(200, 250), 5, 5);
    ellipse(random( 270, 290), random(300, 350), 5, 5);
    rect(random(0, 500), random(0, 400), random(5, 10), random(0, 5));
  }
  fill(0);
  rect(random(0, 500), random(0, 400), random(5, 10), random(0, 5));
}
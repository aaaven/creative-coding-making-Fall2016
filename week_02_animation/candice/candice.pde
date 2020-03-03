float angle=0.0;
void setup() { 
  size(800, 600); 
  noStroke();
  background(1);
  smooth();
}
void draw() {
  translate(1.5, 3);
  fill(237, 249, 0);
  rotate(radians(angle));
  fill(206, 203, 26, 160);
  ellipse(518, 218, 200, 200);
  fill(244, 78, 28, 160);
  ellipse(382, 182, 120, 120);
  //stroke(1);
  fill(237, 237, 116, 160);
  ellipse(650, 500, 450, 450);
  noStroke();
  fill(213, 230, 0, 220);
  beginShape(); // 
  vertex(120, 50); //
  vertex(90, 110);
  vertex(90, 320);
  vertex(310, 320);
  vertex(310, 110);
  vertex(280, 50);
  vertex(250, 110);
  vertex(150, 110);
  endShape(CLOSE); //
  angle+=1;
}
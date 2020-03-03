int x = 10;

void setup() {
  size(500, 500 );
  smooth();
  background(255);
  fill(255, 100, 100);
}

void draw() {
  fill(255, 100, 100, 3);
  rect(0, 0, 500, 500);
  x += 10;
  translate(mouseX, mouseY);
  rotate(x);
  fill(random(255), 100, 100);
  line(-50, 0, 50, 0);
  ellipse(-50, 0, 10, 10);
  ellipse(50, 0, 10, 10);
}
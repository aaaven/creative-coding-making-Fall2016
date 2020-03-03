int value = 0;
void setup() {
  size(800, 800);
}
void draw() {
  background(0);
  for (int i =0; i<10; i++) {
    float dos= random(800);
    line(dos, 0, dos, 800);
  }
}
void keyPressed() {
  if (value == 0) {
    stroke(random(255), random(255), random(255));
  } else {
    stroke(255);
  }
}
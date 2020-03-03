
void setup() {

  size(800,800);

}



void draw() {
  background(0);
  float dos= random(800);
   line(dos,0, dos,800);
}
 void mousePressed() {
  if (mouseButton == LEFT) {
    stroke(random(255), random(255), random(255));
 
  } else {
    stroke(255);
  }
}
    
    
   
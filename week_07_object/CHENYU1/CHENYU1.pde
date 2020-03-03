int[] arrayX; 
int[] arrayY;

void setup() {
  size(700, 700);
  background(0);
  noStroke();
  arrayX = new int[80];
  arrayY = new int[80]; 
  for (int i=0; i<80; i++) {
    arrayX[i] = int(random(0, 5*width/6));
    arrayY[i] = int(random(0, 5*height/6));
  }
}
void draw() {
  background(0);
  for (int i = 0; i< 80; i++) {

    rect(arrayX[i], arrayY[i], 100, 100);

    fill(random(100, 255), random(0, 255), random(0, 255));
  }
}
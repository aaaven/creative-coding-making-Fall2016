
PImage img1, img2,img3;
int a = 0, aPlus = 10;


void setup() {
  size(600, 816);
  background(255);
  img1 = loadImage("9.jpg");
  img2 = loadImage("7.jpg");
  img3 = loadImage("12.mp3");
  img1.resize(600,816);
  img2.resize(600,816);
}
 

void draw() {
  background(0);
  img1.mask(img2);
  image(img1, 0, 0);
  a+= aPlus;
  if (a > width||a<0) {
    aPlus *= -1;
  }
  println(img2.width);
}
void mousePressed() {
  color a = get(mouseX, mouseY);
  println(red(a) + "  " + green(a)+ "  " + blue(a));
  background(a);
}
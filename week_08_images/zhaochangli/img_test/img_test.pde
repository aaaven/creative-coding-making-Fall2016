PImage img1, img2;
int a = 0, aPlus = 10;
void setup() {
  size(800, 600);
  img1 = loadImage("car.jpg");
  img2 = loadImage("people.jpg");
  img1.resize(800, 600);
  img2.resize(800, 600);
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
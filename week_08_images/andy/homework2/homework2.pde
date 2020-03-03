
PImage img1;

void setup() {
  size(960, 600);
  img1 = loadImage("jinmu.jpg");
}
void draw() {
  img1.loadPixels();

  int h = img1.height;
  int w = img1.width;
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int all=x+y*w;
      int paintingOrder=img1.pixels[all];

      int r=int(green(paintingOrder));
      int g = int( blue(paintingOrder));
      int b = int( red(paintingOrder));

      if (x<width/2&&y<height/2) {
        img1.pixels[all]=color(r, b, g);
      } else if (x<width&&y<height/2) {
        img1.pixels[all]=color(r, b, g);
      } else if (x<width&&y<height) {
        img1.pixels[all]=color(r, b, g);
      }
    }
  }
  img1.updatePixels();
  image(img1, 0, 0);
}
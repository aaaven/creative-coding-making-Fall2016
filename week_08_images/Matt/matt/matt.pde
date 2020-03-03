PImage img;

void setup() {
  size(600, 600);
  img = loadImage("20111223120401837.jpg");
  img.resize(600, 600);
}
void draw() {
  img.loadPixels();
  int h = img.height;
  int w = img.width;
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int order =  x + y*w;
      int colorOnOrder = img.pixels[order];
      int r = int( red(colorOnOrder)); 
      int g = int( green(colorOnOrder));
      int b = int( blue(colorOnOrder));
      if (x < height*1/2) {
        img.pixels[order] = color(r, g, 0);
      } 
      if (x > height*1/2) {
        img.pixels[order] = color(0, g, b);
      }
    }
  }

img.updatePixels();
image(img, 0, 0);
}
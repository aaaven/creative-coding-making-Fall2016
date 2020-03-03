PImage img;

void setup() {
  size(800, 600);
  img = loadImage("cat.jpg");
  img.resize(800, 600);
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

      if (y < height*1/3) {
        img.pixels[order] = color(r, 0, b); 
      } 
      if (y< height*2/3 && y > height*1/3) {
        img.pixels[order] = color(r, g, 0);
      }
      if (y>height*2/3) {
        img.pixels[order] = color(0, g, b);
      }
    }
  }
  img.updatePixels();
  image(img, 0, 0);
}

void mousePressed() {
  println();
  println(mouseX + ", " + mouseY);
  color c = img.get(mouseX, mouseY);
  println(red(c) + ", " + green(c) + ", " + blue(c));
}
PImage img;

void setup() {
  size(500, 500);
  img = loadImage("201682-120G30P15693.jpg");
  img.resize(500,500);
}

void draw() { 
  img.loadPixels();
  
  int h = img.height;
  int w = img.width;
  for (int y = 0; y < h; y++) {
    for (int x = 0; x < w; x++) {
      int order =  x + y*w; // ********** IMPORTANT **********
      int colorOnOrder = img.pixels[order];
      
      int r = int( red(colorOnOrder)); 
      int g = int( green(colorOnOrder));
      int b = int( blue(colorOnOrder));
      
      if (x < width*1/3) {
        img.pixels[order] = color(r, g, 0); //
      } 
      if (x < width*2/3 && x > width*1/3) {
        img.pixels[order] = color(0, g, b);
      }
      if(x>width*2/3){
        img.pixels[order] = color(r, 0, b);
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
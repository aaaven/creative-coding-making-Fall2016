PImage img;
int scale=4;
int cols, rows;
void setup() {
  size(900, 750);
  img=loadImage("2.jpg");
  background(255);
  smooth();
  cols=width/scale;
  rows=height/scale;
}

void draw() {
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      int x=i*scale;
      int y=j*scale;
      color c=img.pixels[x+y*img.width]; // get color on each point 
      //float sz=(brightness(c)/255.0)*scale; 
      fill(c);
      noStroke();
      //ellipse(x,y,sz,sz);
      if (x%10 == 0) triangle(x-5, y, x, y+10, x+5, y);
      else triangle(x-5, y+10, x, y, x+5, y+10);
    }
  }
}


void mousePressed() {
  color a = get(mouseX, mouseY);
  println(red(a) + "  " + green(a)+ "  " + blue(a));
  background(a);
}
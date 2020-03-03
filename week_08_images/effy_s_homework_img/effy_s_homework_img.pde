PImage img;
int pointillize = 50;
//int i=0; 

void setup(){
  size(1024,564);
  background(255);
  img=loadImage("110.jpg");
  // PImage img = createImage(100, 100, RGB);
 // for (int x =0; x<100; x++) {
    //for (int y =0; y<100; y++) {
      //img.set(x, y, a);
    }
  
void draw(){

   int x = int(random(img.width));
  int y = int(random(img.height));
  int loc = x + y*img.width;

  loadPixels();
  float r = red(img.pixels[loc]);
  float g = green(img.pixels[loc]);
  float b = blue(img.pixels[loc]);

  noStroke();
  fill(r,g,b,100);
  ellipse(x,y,pointillize,pointillize);
}
//  image(img, 0, 0);
////tint(255, i++,126); 
//tint(i++, 153, 204, 126);
  //image(img,0,0,mouseX*2,mouseY*2);
  //if (i==40) {i=0; }
//delay(200);
  //image(img,0,0);
  //image(img,0,mouseY*-1);
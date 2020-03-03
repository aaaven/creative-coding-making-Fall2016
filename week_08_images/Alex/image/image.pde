

PImage img; 
PImage destination; 

void setup() {
size(1000,750);
img = loadImage("sd.jpg");
destination = createImage(img.width, img.height, RGB);
}

void draw() {

img.loadPixels();
destination.loadPixels();

for (int x = 1; x < width; x++ ) {
for (int y = 0; y < height; y++ ) {

int loc = x + y*img.width;
color pix = img.pixels[loc];

int leftLoc = (x - 1) + y*img.width;
color leftPix = img.pixels[leftLoc];

float diff = abs(brightness(pix) - brightness(leftPix));
destination.pixels[loc] = color(diff); 
}
}

destination.updatePixels();

image(destination,0,0);
}
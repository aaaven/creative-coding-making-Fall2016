import processing.video.*;
Movie myMovie;

int rectWidth;
int columnCount;
int columnIndex;

void setup() {
  size(1280, 720);
  background(255);
  noStroke();

  myMovie = new Movie(this, "02.m4v");
  myMovie.loop();  
  columnCount = 12; // how many columns to go
  columnIndex = 0;
  rectWidth = ceil((float)width / columnCount);
}

void draw() {
  if (myMovie.available() && columnIndex < columnCount) {
    // jump to the right position
    float pos = map(columnIndex, 0, columnCount, 0.15*myMovie.duration(), myMovie.duration()); // map the whole video to columnCount
    myMovie.jump(pos);
    myMovie.read();
    //image(myMovie, 0, 0,width,height);
    int columnX = columnIndex * rectWidth;
    int columnY = 0;
    int columnWidth = rectWidth;
    int columnHeight = height;
    copy(myMovie, columnX, columnY, columnWidth, columnHeight,columnX, columnY, columnWidth, columnHeight);
    columnIndex ++;
  }
}

void mousePressed(){
 saveFrame("coolPhotoSaved-##########.jpg");
}
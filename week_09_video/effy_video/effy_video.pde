import processing.video.*;
Movie myMovie;

int rectWidth;
int columnCount;
int columnIndex;

void setup() {
  size(1920, 1200);
  background(255);
  noStroke();

  myMovie = new Movie(this, "1.mov");
  myMovie.loop();  
  columnCount = 500; 
  columnIndex = 0;
  rectWidth = ceil((float)width / columnCount);
}

void draw() {
  if (myMovie.available() && columnIndex < columnCount) {
    float pos = map(columnIndex, 0, columnCount, 0.15*myMovie.duration(), myMovie.duration()); // map the whole video to columnCount
    myMovie.jump(pos);
    myMovie.read();
    int columnX = columnIndex * rectWidth;
    int columnY = 0;
    int columnWidth = rectWidth;
    int columnHeight = height;
    copy(myMovie, columnX, columnY, columnWidth, columnHeight,columnX, columnY, columnWidth, columnHeight);
    columnIndex ++;
  }
}
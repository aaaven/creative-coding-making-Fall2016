int sat =100;
int satDir=10;
void setup(){
  size(600,600);
  background(0);
  noStroke();
  colorMode(HSB);
}
  void draw(){
  sat +=satDir;
  if(sat>200 || sat<40) satDir*=0;
  int gridSize = 50;
  int index = 0;
  for (int y = 0; y<height;y +=gridSize) {
    for(int x = 0; x < width; x += gridSize){
      fill((frameCount+index)%1000,sat,1000);
      rect(x,y,mouseX,mouseY);
      index++;
    }
  }
}
  
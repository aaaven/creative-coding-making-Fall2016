import processing.sound.*;
SoundFile[] file;

int numsounds = 10;

int value[] = {0,0,0};


void setup() {
  size(640, 360);
  background(255);
    
  
  file = new SoundFile[numsounds];

  
    for (int i = 0; i < numsounds; i++){
    file[i] = new SoundFile(this, (i+1) + ".mp3");
    }
}      

void draw() {
  
    background(value[0],value[1],value[2]);
  
}

void keyPressed() {
  for (int i=0; i < 3; i++) {  
      value[i]=int(random(255));
  }
 
  switch(key){
  case 'a':
    file[0].play();
    break;
    
      case 's':
    file[1].play();
    break;
    
      case 'd':
    file[2].play();
    break;
    
      case 'f':
    file[3].play();
    break;
    
      case 'g':
    file[4].play();
    break;
    
      case 'h':
    file[5].play();
    break;
    
      case 'j':
    file[6].play();
    break;
    
      case 'k':
    file[7].play();
    break;
    
      case 'l':
    file[8].play();
    break;
  }
}
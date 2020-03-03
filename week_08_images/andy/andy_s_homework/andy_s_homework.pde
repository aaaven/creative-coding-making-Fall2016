import processing.sound.*;

//AudioDevice device;
SoundFile[] file;
int numsounds = 5;

SoundFile sample;



void setup() {
  size(640, 360);

  //device = new AudioDevice(this, 48000, 32);
  file = new SoundFile[numsounds];

  for (int i = 0; i < numsounds; i++) {
    file[i] = new SoundFile(this, (i+1) + ".aif");
    println((i+1)+".aif");
  }

  sample = new SoundFile(this, "beat.aiff");

}

void draw() {

  keyPressed();
if(keyPressed){
 sample.play();
}
  background(125, 255, 125);;
  noStroke();

   
  
}









void keyPressed() {
  switch(key) {
  case 'a':
    file[0].play();
    break;

  case 's':
    file[1].play(0.5, 1.0);
    break;

  case 'd':
    file[2].play(0.5, 1.0);
    break;

  case 'f':
    file[3].play(0.5, 1.0);
    break;

  case 'g':
    file[4].play(0.5, 1.0);
    break;

  case 'h':
    file[0].play(1.0, 1.0);
    break;

  case 'j':
    file[1].play(1.0, 1.0);
    break;

  case 'k':
    file[2].play();
    break;

  case 'l':
    file[3].play(1.0, 1.0);
    break;

  }
}
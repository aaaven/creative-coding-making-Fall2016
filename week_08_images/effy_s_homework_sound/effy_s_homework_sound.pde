import processing.sound.*;
SoundFile sound;

void setup() {
  size(640, 360);
  background(255);
  sound = new SoundFile(this, "OK.mp3");
}      

void draw() {
  float speed = mouseX/(float)width * 3;
  sound.rate(speed);

  float vol = mouseY/(float)height * 4;
  sound.amp(vol);
}
void keyPressed() {
  if (key == 'a') {
    sound.play();
  }
  if (key == 's') {
    sound.stop();
  }
}
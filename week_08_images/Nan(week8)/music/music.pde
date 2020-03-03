import processing.sound.*;
SoundFile song;

void setup() {
  size(500, 500);
  background(255);
    
  // Load a soundfile from the /data folder of the sketch and play it back
  song = new SoundFile(this, "luhan.mp3");
  //song.loop();
}      

void draw() {
 
  
  float volume = map(mouseX, 0, width, 0, 1);
  song.amp(volume);
}

 void keyPressed(){
  if(keyPressed)
{
  if((key=='a')||(key=='A'))
  {
    song.play();
  }
       else if ((key=='s')||(key=='S'))
       {
      song.stop();
  }
}

}
      
    
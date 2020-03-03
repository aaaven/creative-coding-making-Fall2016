// This sketch shows how to use the Amplitude class to analyze a
// stream of sound. In this case a sample is analyzed. Smooth_factor
// determines how much the signal will be smoothed on a scale
// form 0-1.

import processing.sound.*;

// Declare the processing sound variables 
SoundFile sample;
Amplitude rms;
// Declare a scaling factor
float scale=5;
// Declare a smooth factor
float smooth_factor=0.25;
// Used for smoothing
float sum;

public void setup() {
    size(640,360);

    //Load and play a soundfile and loop it
    sample = new SoundFile(this, "beat.aiff");
    sample.loop();
    
    // Create and patch the rms tracker
    rms = new Amplitude(this);
    rms.input(sample);
}      

public void draw() {
  keyPressed();
    // Set background color, noStroke and fill color
    background(125,255,125);
    noStroke();
    fill(255,0,150);
    
    // smooth the rms data by smoothing factor
    sum += (rms.analyze() - sum) * smooth_factor;   

    // rms.analyze() return a value between 0 and 1. It's
    // scaled to height/2 and then multiplied by a scale factor
    float rms_scaled=sum*(height/2)*scale;

    // We draw an ellispe coupled to the audio analysis
    ellipse(width/2, height/2, rms_scaled, rms_scaled);
}

void keyPressed(){
 if(key=='a'||key=='A'){
  sample.play();
 }
 else if(key=='s'||key=='S'){
   sample.play();
 }
 else if(key=='d'||key=='D'){
   sample.play();
 }else if(key=='f'||key=='F'){
   sample.play();
 }else if(key=='g'||key=='G'){
   sample.play();
 }else if(key=='h'||key=='H'){
   sample.play();
 }else if(key=='k'||key=='K'){
   sample.play();
 }else if(key=='l'||key=='L'){
   sample.play();
 }
}
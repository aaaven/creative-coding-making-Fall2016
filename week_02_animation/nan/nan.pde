float angle=0.0;

//----------------declare variables---------------
int count = 0;
int fCount = 0;
//----------------declare variables---------------

void setup() {
  size(500, 500, P3D);
  smooth();
}


void draw() {
  background(38, 38, 38);

  translate(0, 0);
  scale(cos(angle) +1);


  smooth();
  stroke(255, 181, 16);
  strokeWeight(8);
  noFill();
  ellipse(249.16, 253.41, 405.16, 405.16);//big yellow ellipse

  translate(0, 0);
  scale(cos(angle) +2);


  stroke(236, 64, 57);
  strokeWeight(8);
  ellipse(249.16, 253.41, 381.9, 381.9);//big red ellipse

  translate(0, 0);
  scale(sin(angle) +3);

  stroke(32, 160, 170);
  strokeWeight(8);
  ellipse(249.16, 253.41, 364.9, 364.9);//big blue ellipse

  translate(0, 0);
  scale(sin(angle) +4);

  stroke(255, 181, 16);
  strokeWeight(8);
  ellipse(249.16, 253.41, 344.92, 344.92);//second yellow

  stroke(236, 64, 57);
  strokeWeight(8);
  ellipse(249.16, 253.41, 325.88, 325.88);//second red

  translate(0, 0);
  scale(sin(angle) +5);

  stroke(32, 160, 170);
  strokeWeight(8);
  ellipse(249.16, 253.41, 306.9, 306.9);//second blue

  translate(0, 0);
  scale(sin(angle) +6);

  stroke(255, 181, 16);
  strokeWeight(8);
  ellipse(249.16, 253.41, 286.92, 286.92);//third yellow

  translate(0, 0);
  scale(sin(angle) +7);

  stroke(236, 64, 57);
  strokeWeight(8);
  ellipse(249.16, 253.41, 266.95, 266.95);//third red

  translate(0, 0);
  scale(sin(angle) +8);

  stroke(32, 160, 170);
  strokeWeight(8);
  ellipse(249.16, 253.41, 246.97, 246.97);//third blue

  translate(0, 0);
  scale(sin(angle) +9);

  stroke(255, 181, 16);
  strokeWeight(8);
  ellipse(249.16, 253.41, 225, 225);//fourth yellow
  scale(sin(angle) +10);

  stroke(236, 64, 57);
  strokeWeight(8);
  ellipse(249.16, 253.41, 202.09, 202.09);//fourth red
  scale(sin(angle) +11);

  stroke(32, 160, 170);
  strokeWeight(8);
  ellipse(249.16, 253.41, 183.04, 183.04);//fourth blue

  stroke(255, 181, 16);
  strokeWeight(8);
  ellipse(249.16, 253.41, 165.07, 165.07);//fifth yellow
  scale(sin(angle) +12);

  stroke(236, 64, 57);
  strokeWeight(8);
  ellipse(249.16, 253.41, 145.09, 145.09);//fifth red
  scale(sin(angle) +13);

  stroke(32, 160, 170);
  strokeWeight(8);
  ellipse(249.16, 253.41, 125.12, 125.12);//fifth blue
  scale(sin(angle) +14);

  stroke(255, 181, 16);
  strokeWeight(8);
  ellipse(249.16, 253.41, 105.14, 105.14);//sixth yellow

  stroke(236, 64, 57);
  strokeWeight(8);
  ellipse(249.16, 253.41, 85.16, 85.16);//sixth red

  stroke(32, 160, 170);
  strokeWeight(8);
  ellipse(249.16, 253.41, 65.19, 65.19);//sixth blue
  scale(sin(angle) +15);

  stroke(255, 181, 16);
  strokeWeight(8);
  ellipse(249.16, 253.41, 47, 47);//seventh yellow
  scale(sin(angle) +16);

  stroke(236, 64, 57);
  strokeWeight(8);
  ellipse(249.16, 253.41, 29, 29);//last red
  scale(sin(angle) +17);

  angle +=0.1;
//--------------------------------save frames-----------------------
  if (fCount < 100) { //----------------how many frames do you need?
    if (count%10==1) {
      saveFrame("frame_" + fCount + ".jpg");
      fCount ++;
    }
  }
  count++;  
//--------------------------------save frames-----------------------

}
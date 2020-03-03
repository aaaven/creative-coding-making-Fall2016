 float []v ={0, 25};
float angle;
float aangle;
float x=0; 
float y=0;
float r=0;
float z=0;
float rPlus = 1;
float scalar=2;
float speed=0.1;
//Ball b = new Ball(0, 500, 10, 10, 0, 0, colo);
//Ball[] trace = new Ball [n];

void setup() {
  size(500, 500);
  smooth();
  noStroke();
  background(0);
  //counter = 0.01;
  //for (int i = 0; i < n; i += 1) {
  //  trace[i] = b;
  //}
  //colorMode(HSB);
}
//
//class Ball {
//  float x, y, vx, vy, ax, ay;
//  int colo;
//  Ball(float xx, float yy, float vvx, float vvy, float aax, float aay, int c) {
//    x = xx;
//    y = yy;
//    vx = vvx;
//    vy = vvy;
//    ax = aax;
//    ay = aay;
//  }
//void drawb(float rad) {
//  counter+=0.1;

//  fill(0, 0, 255, 100);
//  ellipse(100, 100, 0.1*rad* sin(counter), 0.1*rad*sin(counter) );
//      ellipse(110, 110, 0.2*rad* sin(counter), 0.2*rad*sin(counter) );
//         rotate(-0.1*radians(angle));
//          ellipse(120, 120, 0.3*rad* sin(counter), 0.3*rad*sin(counter) );
//              ellipse(130, 130, 0.4*rad* sin(counter), 0.3*rad*sin(counter) );
//  rotate(0.1*radians(angle));
//  angle+=0.009;
//}
//}

void draw() {
  translate(width/2, height/2);
  pushMatrix();
  translate(-width/4, -height/4);
  rotate(radians(angle));
  angle++;
  popMatrix();
  rotate(radians(angle));
  v[0]+=0.3;
  float r=abs(sin(radians(angle)));
  if (v[0]<34) {
    rotate(sin(radians(angle)));
    rect(v[0], 0, 1.5*r, 1.5*r);
    rect(0, v[0], 1.5*r, 1.5*r);
    rect(-v[0], 0, 1.5*r, 1.5* r);
    rect(0, -v[0], 1.5*r, 1.5* r);
    angle+=-2;
  }
  if (v[0]>45 &&v[0]<100) {
    //translate(-width/3, -height/3);
    v[0]+=0.1;
    float rl=abs(sin(radians(angle)));
    rotate(0.1*sin(radians(angle)));
    rect(v[0], 0, r*2, r*2);
    rect(0, v[0], r*2, r*2);
    rect(-v[0], 0, r*2, r*2);
    rect(0, -v[0], r*2, r*2);
    angle++;
    println(v[0]);
  } else if (v[0]>40) {
    pushMatrix();
    v[0]+=1;
    float rll=abs(sin(radians(aangle)));
    rotate(radians(aangle));
    rect(100, 0, rll, rll);
    rect(0, 100, rll, rll);
    rect(-100, 0, rll, rll);
    rect(0, -100, rll, rll);
    rect(100, 100, rll, rll);
    rect(-100, -100, rll, rll);
    rect(-100, 100, rll, rll);
    rect(100, -100, rll, rll);
    aangle+=2;
    popMatrix();


    pushMatrix();
    rotate(radians(angle));
    ellipse(100, 100, r, r);
    popMatrix();


    pushMatrix();

    fill(255);
    v[0]+=0.1;
    v[1]+=0.1;
    fill(random(150, 255));
    rotate(1*radians(aangle));

    ellipse(v[0], v[0], 2*r, 2*r);
    ellipse(v[1], v[1], 2*r, 2*r);

    ellipse(-v[0], - v[0], 2*r, 2*r); 
    ellipse(-v[1], -v[1], 2*r, 2* r);

    ellipse(v[0], - v[0], 2* r, 2* r);
    ellipse(-v[1], v[1], 2*r, 2*r);

    ellipse(-v[0], v[0], 2*r, 2*r);
    ellipse(v[1], -v[1], 2*r, 2*r);


    ellipse(v[0]/2, v[0]/2, r, r);
    ellipse(v[1]/2, v[1]/2, r, r);

    ellipse(-v[0]/2, - v[0]/2, r, r);
    ellipse(-v[1]/2, -v[1]/2, r, r);

    ellipse(v[0]/2, - v[0]/2, r, r);
    ellipse(-v[1]/2, v[1]/2, r, r);

    ellipse(-v[0]/2, v[0]/2, r, r);
    ellipse(v[1]/2, -v[1]/2, r, r);
    aangle++;
    popMatrix();
 
 
 
 
 
 
 
 
 ellipse(2*sin(radians(angle)),2*sin(radians(angle)),r,r);
    ellipse(20*sin(radians(angle)),20*sin(radians(angle)),r,r);
    ellipse(200*sin(radians(angle)),200*sin(radians(angle)),r,r);
     ellipse(2*cos(radians(angle)),2*cos(radians(angle)),r,r);
    ellipse(20*cos(radians(angle)),20*cos(radians(angle)),r,r);
    ellipse(200*cos(radians(angle)),200*cos(radians(angle)),r,r);
    
     ellipse(-2*sin(radians(angle)),-2*sin(radians(angle)),r,r);
    ellipse(-20*sin(radians(angle)),-20*sin(radians(angle)),r,r);
    ellipse(-200*sin(radians(angle)),-200*sin(radians(angle)),r,r);
     ellipse(-2*cos(radians(angle)),-2*cos(radians(angle)),r,r);
    ellipse(-20*cos(radians(angle)),-20*cos(radians(angle)),r,r);
    ellipse(-200*cos(radians(angle)),-200*cos(radians(angle)),r,r);
    
    ellipse(-2*sin(radians(angle)),2*sin(radians(angle)),r,r);
    ellipse(-20*sin(radians(angle)),20*sin(radians(angle)),r,r);
    ellipse(-200*sin(radians(angle)),200*sin(radians(angle)),r,r);
     ellipse(2*cos(radians(angle)),-2*cos(radians(angle)),r,r);
    ellipse(20*cos(radians(angle)),-20*cos(radians(angle)),r,r);
    ellipse(200*cos(radians(angle)),-200*cos(radians(angle)),r,r);
    
    ellipse(2*sin(radians(angle)),-2*sin(radians(angle)),r,r);
    ellipse(20*sin(radians(angle)),-20*sin(radians(angle)),r,r);
    ellipse(200*sin(radians(angle)),-200*sin(radians(angle)),r,r);
     ellipse(-2*cos(radians(angle)),2*cos(radians(angle)),r,r);
    ellipse(-20*cos(radians(angle)),20*cos(radians(angle)),r,r);
    ellipse(-200*cos(radians(angle)),200*cos(radians(angle)),r,r);
    
    ellipse(2*cos(radians(angle)),-2*sin(radians(angle)),r,r);
    ellipse(20*cos(radians(angle)),-20*sin(radians(angle)),r,r);
    ellipse(200*cos(radians(angle)),-200*sin(radians(angle)),r,r);
     ellipse(-2*sin(radians(angle)),2*cos(radians(angle)),r,r);
    ellipse(-20*sin(radians(angle)),20*cos(radians(angle)),r,r);
    ellipse(-200*sin(radians(angle)),200*cos(radians(angle)),r,r);
    
    ellipse(2*sin(radians(angle)),-2*cos(radians(angle)),r,r);
    ellipse(20*sin(radians(angle)),-20*cos(radians(angle)),r,r);
    ellipse(200*sin(radians(angle)),-200*cos(radians(angle)),r,r);
     ellipse(-2*sin(radians(angle)),2*cos(radians(angle)),r,r);
    ellipse(-20*sin(radians(angle)),20*cos(radians(angle)),r,r);
    ellipse(-200*sin(radians(angle)),200*cos(radians(angle)),r,r);
    
     ellipse(-2*sin(radians(angle)),2*cos(radians(angle)),r,r);
    ellipse(-20*sin(radians(angle)),20*cos(radians(angle)),r,r);
    ellipse(-200*sin(radians(angle)),200*cos(radians(angle)),r,r);
     ellipse(2*sin(radians(angle)),-2*cos(radians(angle)),r,r);
    ellipse(20*sin(radians(angle)),-20*cos(radians(angle)),r,r);
    ellipse(200*sin(radians(angle)),-200*cos(radians(angle)),r,r);
    
    ellipse(-2*cos(radians(angle)),2*sin(radians(angle)),r,r);
    ellipse(-20*cos(radians(angle)),20*sin(radians(angle)),r,r);
    ellipse(-200*cos(radians(angle)),200*sin(radians(angle)),r,r);
     ellipse(2*sin(radians(angle)),-2*cos(radians(angle)),r,r);
    ellipse(20*sin(radians(angle)),-20*cos(radians(angle)),r,r);
    ellipse(200*sin(radians(angle)),-200*cos(radians(angle)),r,r);
    //popMatrix();
  }
}
float n=1;
float aangle;
float angle;
float x=0; 
float y=0;
float r=0;
float z=0;
float rPlus = 1;
float scalar=2;
float speed=0.1;
float offset=80;
float []v ={0, 5};
float f;
float fl;

void setup() {
  size(500, 500);
  smooth();
  noStroke();
  background(255);
}

void draw() {
  translate(width/2, height/2);
  int y=int (random (160, 255));//change color
  int g=int (random (200, 255));
  int f=int (random (200, 255));
  fill(y, g, f, 100);
  //ellipse(x+120, y+130, 5, 5);
  angle +=speed;
  scalar +=speed;
  rotate(radians(angle));
  fill(f, g, 0, 20);
  rect(0, 0, 7, 7);
  rect(11, 11, r*0.8, r*0.8);
  ellipse(10, 10, r*0.3, r*0.3);
  ellipse(90, 90, r, r);
  ellipse(100, 100, r, r);
  ellipse(110, 110, r, r);
  ellipse(120, 120, r, r);


  rotate(radians(aangle));
  rect(30, 30, r, r);
  ellipse(40, 40, r, r);
  rect(50, 50, r, r);
  ellipse(60, 60, r, r);
  rect(70, 80, r, r);
  ellipse(80, 70, r, r);
  rect(130, 130, r*3, r*3);

  x++;
  y++;
  r += rPlus;
  if ( r == 10) {
    x--;
    y--;
    rPlus *= -1;
  } else if (r == 0) {
    rPlus *= -1;
  }
  angle+=1;
  aangle-=-0.6;
  //println(aangle);
  if (angle>378 && angle<480) {
    background(255-offset);
    offset+=5;
  } else if (angle>480) {

    int yl=int (random (100, 255));//change color
    int gl=int (random (200, 255));
    int fl=int (random (120, 255));
    fill(yl, gl, fl, 100);
    //ellipse(x+120, y+130, 5, 5);
    angle +=2*speed;
    scalar +=2*speed;
    rotate(-radians(angle));
    rect(11, 11, r*0.8, r*0.8);
    ellipse(10, 10, r*0.3, r*0.3);
    ellipse(90, 90, r, r);
    ellipse(100, 100, r, r);
    ellipse(110, 110, r, r);
    ellipse(120, 120, r, r);


    rotate(radians(aangle));
    rect(30, 30, r, r);
    ellipse(40, 40, r, r);
    rect(50, 50, r, r);
    rotate(-radians(aangle));
    ellipse(60, 60, r, r);
    rect(70, 80, r, r);
    ellipse(80, 70, r, r);
    rect(130, 130, r*3, r*3);
    println(angle);
  }
  if (angle>1340) {
    //pushMatrix();
    background(0);
    fill(255);
    v[0]+=1;
    v[1]+=1;

    ellipse(v[0], v[0], r, r);
    ellipse(v[1], v[1], r, r);

    ellipse(-v[0], - v[0], r, r);
    ellipse(-v[1], -v[1], r, r);

    ellipse(v[0], - v[0], r, r);
    ellipse(-v[1], v[1], r, r);

    ellipse(-v[0], v[0], r, r);
    ellipse(v[1], -v[1], r, r);


    ellipse(v[0]/2, v[0]/2, r, r);
    ellipse(v[1]/2, v[1]/2, r, r);

    ellipse(-v[0]/2, - v[0]/2, r, r);
    ellipse(-v[1]/2, -v[1]/2, r, r);

    ellipse(v[0]/2, - v[0]/2, r, r);
    ellipse(-v[1]/2, v[1]/2, r, r);

    ellipse(-v[0]/2, v[0]/2, r, r);
    ellipse(v[1]/2, -v[1]/2, r, r);

    ellipse(3*v[0]/4, v[0]/2, r, r);
    ellipse(3*v[1]/4, v[1]/2, r, r);

    ellipse(3*-v[0]/4, - v[0]/2, r, r);
    ellipse(3*-v[1]/4, -v[1]/2, r, r);

    ellipse(3*v[0]/4, - v[0]/2, r, r);
    ellipse(3*-v[1]/4, v[1]/2, r, r);

    ellipse(3*-v[0]/4, v[0]/2, r, r);
    ellipse(3*v[1]/4, -v[1]/2, r, r);
    
    ellipse(1*v[0]/4, v[0]/2, r, r);
    ellipse(1*v[1]/4, v[1]/2, r, r);

    ellipse(1*-v[0]/4, - v[0]/2, r, r);
    ellipse(1*-v[1]/4, -v[1]/2, r, r);

    ellipse(1*v[0]/4, - v[0]/2, r, r);
    ellipse(1*-v[1]/4, v[1]/2, r, r);

    ellipse(1*-v[0]/4, v[0]/2, r, r);
    ellipse(1*v[1]/4, -v[1]/2, r, r);
    
    ellipse(3*v[0]/2, v[0]/2, r, r);
    ellipse(3*v[1]/2, v[1]/2, r, r);

    ellipse(3*-v[0]/2, - v[0]/2, r, r);
    ellipse(3*-v[1]/2, -v[1]/2, r, r);

    ellipse(3*v[0]/2, - v[0]/2, r, r);
    ellipse(3*-v[1]/2, v[1]/2, r, r);

    ellipse(3*-v[0]/2, v[0]/2, r, r);
    ellipse(3*v[1]/2, -v[1]/2, r, r);
    
       ellipse(4*v[0]/2, v[0]/2, r, r);
    ellipse(4*v[1]/2, v[1]/2, r, r);

    ellipse(4*-v[0]/2, - v[0]/2, r, r);
    ellipse(4*-v[1]/2, -v[1]/2, r, r);

    ellipse(4*v[0]/2, - v[0]/2, r, r);
    ellipse(4*-v[1]/2, v[1]/2, r, r);

    ellipse(4*-v[0]/2, v[0]/2, r, r);
    ellipse(4*v[1]/2, -v[1]/2, r, r);
    
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
    
    if (angle>3000){
      background(0);
      
  }
}
//}
}
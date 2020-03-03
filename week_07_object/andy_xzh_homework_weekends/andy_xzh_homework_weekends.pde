LittleBall ball;
float x;
float m=random(110,200);
float angle;
void setup(){
  size(800,800);
  background(255);
  ball=new LittleBall(50);
}

void draw(){
  translate(width/2,height/2);
  rotate(radians(x));
  ball.move();
  ball.display();
  x++;
  float r=abs(sin(radians(angle)));
  rotate(sin(radians(angle)));
  fill(0);
  rect(x,0,1.5*r,1.5*r);
  rect(0,x,1.5*r,1.5*r);
  rect(-x,0,1.5*r,1.5*r);
  rect(0,-x,1.5*r,1.5*r);
  angle+=-2;
}

class LittleBall{
  int zhijing;
  float speed=2.5;
  int z[]=new int[60];
  int h[]=new int[60];

    
  LittleBall(int tempzhijing){
    zhijing=tempzhijing;
  }
  
  void move(){
    for(int i=z.length-1;i>0;i--){
      z[i]=z[i-1];
      h[i]=h[i-1];
    }
    z[0]=mouseX;
    h[0]=mouseY;
  }
  
  void display(){
    noStroke();
    for(int i=0;i<z.length;i++){
      fill(i*5);
      ellipse(0.5*z[i],0.5*h[i],zhijing,zhijing);
    }
  }
}
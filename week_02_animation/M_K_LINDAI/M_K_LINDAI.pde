float a=0;
float r1=290;
float r2=120;
float ii=0;


void setup() {
size(900, 600, P3D);
noFill();
background(255);
frameRate(0);
smooth();
}


void draw() {
background(255);
pt();
a-=a/2*0.3;
if (abs(a)<0.01) {
a=0;
}
}


void mouseDragged() {
a=mouseX-pmouseX;
}


void pt() {
noStroke();

translate(width/2, 150);
rotateX(150);
rotateZ(PI/9);

strokeWeight(2);
ii+=a*4;

for (int i=0;i<15;i++) {
rotateY(i*5+ii/7000);

fill(220, 0, 0, 30);
bezier(r2, r2-60, r2, r1+60, r2, r1-60, r1, r2+60);//hs

fill(0, 75, 0, 50);
rect(40, 20, 10, 140);//lv
}
}


void mousePressed() {
if(mouseButton==RIGHT){
a=200;
}
}
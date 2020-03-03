void setup(){
size(800,790);
smooth();
}
void draw() {
background(0);
stroke(random(0,255),0,random(50,255));
strokeWeight(6);
line(random(900),random(900), random(900),random(900));
line(random(900),random(900), random(900),random(900)); 
}
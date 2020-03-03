float[]g;
void setup() {
  size(600, 600);
  smooth();
  ellipseMode(RADIUS);
  g=new float[width];
  for (int i =0; i<g.length; i++) 
    g[i] = random(0, 255);
}
void draw() {
  for (int i =0; i<g.length; i++) {
    stroke(g[i]);
    line(i, 0, i, height);
  }
  if (mousePressed==true) {
    fill(150, random(100, 200), random(0, 50));
    ellipse(mouseX, mouseY, random(100, 200), random(0, 50));
  } else {
    fill(0);
  }
  ellipse(width/2, height/2, 20, 20);
}
float R = 30;
float S = 10;
float T = 10;
int N = 5;
float ringX[] = new float[N];
float ringY[] = new float[N];
float ringK[] = new float[N];
void drawCurl(float x, float y, float r, float s, float t) {
  pushMatrix();
  translate(x, y);
  beginShape();
  vertex(-r, -t);
  bezierVertex(-r, s - t, +r, s - t, +r, -t);
  vertex(+r, +t);
  bezierVertex(+r, s + t, -r, s + t, -r, +t);
  endShape(CLOSE);
  popMatrix();
}
boolean paused = false;

void mouseClicked() {
  paused = !paused;
}
void setup() {
  size(600, 600);
  for (int i = 0; i < N; i++) {
    ringX[i] = 0.5 * width;
    ringY[i] = 0.5 * height;
    ringK[i] = i + 1;
  }
}
void draw() {
  background(0);
  stroke(random(0, 255), random(0, 255), random(0, 255));
  //strokeWeight(8);
  if (!paused)
    for (int i = 0; i < N; i++) {
      ringY[i] += 0.2 * (N - i) * (mouseY - ringY[i]) /N;
    }
  for (int i = N - 1; i >= 0; i--) {
    fill(random(0, 255), random(0, 255), random(0, 255));
    drawCurl(ringX[i], ringY[i], R * ringK[i], -S * ringK[i], T);
  }
  for (int i = 0; i < N; i++) {
    fill(random(0, 255), random(0, 255), random(0, 255));
    drawCurl(ringX[i], ringY[i], R * ringK[i], +S * ringK[i], T);
  }
}
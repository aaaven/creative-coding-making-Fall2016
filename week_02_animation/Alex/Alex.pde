
float counter;
float fro = 0.01;
float grav = 0.2;
float c =  -0.9;
int sx = 400;
int sy = 400;
float rad = 50;
int deltacolo = 1;
int colo = 0;
color bg = color(0);
int n = 100;
Ball b = new Ball(0, 500, 10, 10, 0, 0, colo);
Ball[] trace = new Ball [n];
void setup() {
smooth();
counter = 0.01;
for (int i = 0; i < n; i += 1){
trace[i] = b;
}
colorMode(HSB);
size(400, 400);
noStroke();
}
class Ball {
float x, y, vx, vy, ax, ay;
int colo;
Ball(float xx, float yy, float vvx, float vvy, float aax, float aay, int c) {
x = xx;
y = yy;
vx = vvx;
vy = vvy;
ax = aax;
ay = aay;
}

void upd() {
if (x < rad) {
vx *= c;
x = rad;
}
if (x > sx - rad) {
vx *= c;
x = sx - rad;
}
if (y < rad) {
vy *= c;
y = rad;
}
if (y > sy - rad) {
vy *= c;
y = sy - rad;
}
ax = fro * vx;
ay = fro * vy;
vx += ax;
vy += ay + grav;
x += vx;
y += vy;
}
void drawb(float rad) {
counter++;
fill(random(230), 255, 255,100);
ellipse(x, y,2*rad* sin(counter), 2*rad*sin(counter) );
}
}
void draw() {
counter++;
background(bg);
b.upd();
b.drawb(rad);
for (int i = n - 1; i > 0; i -= 1){
trace[i] = trace [i - 1];
trace[i].drawb(rad * (n - i) / n);
}
trace[0] = b;
if (mousePressed == true) {
b = new Ball ( mouseX, mouseY, 0, 0, 0, 0, b.colo);
}
}
void mouseReleased() {
b = new Ball (mouseX,mouseY, mouseX - pmouseX, mouseY - pmouseY, 0, 0, b.colo);
}
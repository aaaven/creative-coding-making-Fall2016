Stripe[] stripes = new Stripe[70];

void setup() {
  size(500, 500);
  // chu shi hua tiao wen
  for (int i = 0; i < stripes.length; i ++ ) {
    stripes[i] = new Stripe();
  }
}


void draw() {
  background(30);
  for (int i = 0; i < stripes.length; i ++ ) { 
    stripes[i].rollover(mouseX, mouseY);//mouse
    stripes[i].move(); 
    stripes[i].display();
  }
}
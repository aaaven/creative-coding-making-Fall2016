class Stripe {
  float x; //tiao wen de x zuo biao zhou
  float speed;//yi dong su de
  float w; //kuan du
  boolean mouse; 
  
  Stripe() {//tiao wen wei 0
    x = 0;//sui ji zheng xiang yi dong 
    speed = random(1);
    w = random(10, 30);
    mouse = false;
  }


  //color
  void display() { 
    if (mouse) {
      fill(255);
    } else {
      fill(100-x, 200+w, x);
    }
    noStroke();
    rect(x, 0, w, height);
  }

// yi dong
  void move() {
    x += speed;
    if (x > width + 20)
      x = -20;
  }


  void rollover(int mx, int my) {
    if (mx > x && mx < x + w) {//zuo wei x, you wei x+w
      mouse = true;
    } else {
      mouse = false;
    }
  }
}
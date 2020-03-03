int [] xqiu = new int[50];
int [] yqiu = new int[50];



void setup() {

  size(800, 800);

  smooth();



  for (int i = 0; i < xqiu.length; i ++ ) {  //xqiu.length=50 
    xqiu[i] = 0;
    yqiu[i] = 0;
  }
}



void draw() {

  background(255);



  for (int i = 0; i < xqiu.length-1; i ++ ) {
    xqiu[i] = xqiu[i+1];
    yqiu[i] = yqiu[i+1];
  }



  for (int i = 0; i < xqiu.length; i ++ ) {
    noStroke();
    fill(255-i*5);
    ellipse(xqiu[i], yqiu[i], i, i);
  }



  xqiu[xqiu.length-1] = mouseX; 
  yqiu[yqiu.length-1] = mouseY;
}
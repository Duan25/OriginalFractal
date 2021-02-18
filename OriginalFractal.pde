public void setup() {
 size(800, 800);
 rectMode(CENTER);
 background(0);
 myFractal(400, 400, 200);
}

public void draw() {
}

public void myFractal(int x, int y, int siz) {
  fill((float)Math.random() * 256, (float)Math.random() * 256, (float)Math.random() * 256, (float)Math.random() * 256);
  ellipse(x, y, siz, siz);
  if(siz > 10) {
    myFractal(x, y, siz/2);
    myFractal(x + siz, y, siz/2);
    myFractal(x + siz/2, y - siz, siz/2);
    myFractal(x + siz/2, y + siz, siz/2);
    myFractal(x - siz, y, siz/2);
    myFractal(x - siz/2, y + siz, siz/2);
    myFractal(x - siz/2, y - siz, siz/2);
    myFractal(x + siz, y, siz/2);
  }
}

color base;
color copy;
color outer;
color it;
private final float MAX_HUE = 240.0;
private final float MAX_SAT = 240.0;
private final float MAX_BRI = 240.0;

void setup() {
  size(displayWidth, displayHeight);
  pushM();
  colorMode(HSB, MAX_HUE, MAX_SAT, MAX_BRI);
  base = color(120, 240, 160);
  popM();
  colorMode(RGB, 255);
  copy = color(base);
  outer = color(38, 201, 10);
  it = copy;
}

void draw() {
  bg(it);
  if(it == copy) {
    it = outer;
    println("copy");
  }
  else it = copy;
//  color copy = color(base);
//  for(int i = 0; i < 24; i++) {
//    fill(copy);
//    rect(i * 100, 0, 100, 100);
//    copy = nextColor(copy);
//  }
  nl();
}

void drawClock() {
  
}

void keyPressed() {
  redraw();
}

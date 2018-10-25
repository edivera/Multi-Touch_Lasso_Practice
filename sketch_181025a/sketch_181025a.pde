final float MAX_HUE = 240;
final float MAX_SAT = 240;
final float MAX_BRI = 240;
color base;

void setup() {
  size(displayWidth, displayHeight);
  colorMode(HSB, MAX_HUE, MAX_SAT, MAX_BRI);
  base = color(0, 240, 120);
}

void draw() {
  color copy = color(base);
  for(int i = 0; i < 24; i++) {
    fill(copy);
    rect(i * 100, 0, 100, 100);
    copy = nextColor(copy);
  }
  noLoop();
}

void drawClock() {
  
}

int colorPartitions = 12;
color nextColor(color ref) {
  return color((int)(hue(ref) + MAX_HUE / 12) % (int)MAX_HUE, saturation(ref), brightness(ref));
}

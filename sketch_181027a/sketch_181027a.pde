CrystalBox cb;

void setup() {
  size(displayWidth, displayHeight);
  cb = new Standard2x1Box(100, 100, 2);
}

void draw() {
  bg(color(128));
  cb.draw();
  nl();
}

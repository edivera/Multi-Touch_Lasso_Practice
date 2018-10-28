CrystalBox cb;

void setup() {
  size(displayWidth, displayHeight);
  cb = new CrystalBox(100, 100, 200, 100);
}

void draw() {
  bg(color(128));
  cb.draw();
  nl();
}

/*
 * Desc: List of functions to simplify the amount of typing in processing.
 * By: Edilio Vera
 *
 */

void bg(color c) {
  background(c);
}

void nl() {
  noLoop();
}

void pushM() {
  pushMatrix();
}

void popM() {
  popMatrix();
}

float sat(color c) {
  return saturation(c);
}
float bri(color c) {
  return brightness(c);
}

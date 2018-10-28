//as you drag the box down, I want to be able to see its angle change
//fix percentages and angle, maybe make x0 the front and x4 the back

class CrystalBox {
  
  /*
  background
  x0, x1
  x2, x3
  foreground
  x4, x5
  x6, x7
  */
  
  private PVector[] cords = new PVector[8];
  private int craftIdx = 0;
  
  public CrystalBox(float w, float h) {
    //must give h and w
    //give x and y or I'll start it at the top. x, y for point x4
    this(0, 0, w, h);
  }
  
  public CrystalBox(float x, float y, float w, float h) {
    craft(x * 1.2, y * 0.9);
    craft(cords[0].x + w, cords[0].y);
    craft(cords[0].x, cords[0].y + h);
    craft(cords[0].x + w, cords[0].y + h);
    craft(x, y);
    craft(cords[4].x + w, cords[4].y);
    craft(cords[4].x, cords[4].y + h);
    craft(cords[4].x + w, cords[4].y + h);
  }
  
  void craft(float x, float y) {
    cords[craftIdx++] = new PVector(x, y);
  }
  
  void draw() {
    PVector[] c = cords;
    //white lines no fill
    colorMode(RGB, 255);
    stroke(255);
    noFill();
    rectMode(CORNERS);
    //front rect
    rect(c[4].x, c[4].y, c[7].x, c[7].y);
    //back rect
    rect(c[0].x, c[0].y, c[3].x, c[3].y);
    //wall lines
    line(100, 100, 120, 90);
    line(300, 100, 280, 90);
    line(100, 200, 120, 170);
    line(300, 200, 280, 170);
    //glass details
  }
  
}

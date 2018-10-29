//as you drag the box down, I want to be able to see its angle change
//fix percentages and angle, maybe make x0 the front and x4 the back

class CrystalBox {
  
  /*
  foreground
  x0, x1
  x2, x3
  background
  x4, x5
  x6, x7
  */
  
  private PVector[] cords = new PVector[8];
  private int craftIdx = 0;
  private float wid = 0.0;
  
  private boolean containsObject = false;
  
  public CrystalBox(float x, float y, float w, float h) {
    wid = w;
    
    craftPoints(x, y, w, h);
  }
  
  public void draw() {
    if(containsObject) {
    }
    else {
    }
  }
  
  public void drawEmpty() {
    PVector[] c = cords;
    //white lines no fill
    colorMode(RGB, 255);
    stroke(255);
    fill(255, 255, 255, 30);
    rectMode(CORNERS);
    //front rect
    rect(c[0].x, c[0].y, c[3].x, c[3].y);
    //back rect
    rect(c[4].x, c[4].y, c[7].x, c[7].y);
    //wall lines
    for(int i = 0; i < 4; i++) {
      line(c[i].x, c[i].y, c[i + 4].x, c[i + 4].y);
    }
  }
  
  
  
  private void craft(float x, float y) {
    cords[craftIdx++] = new PVector(x, y);
  }
  private void craftPoints(float x, float y, float w, float h) {
    float bw = w * 0.8;
    
    craft(x, y);
    craft(cords[0].x + w, cords[0].y);
    craft(cords[0].x, cords[0].y + h);
    craft(cords[0].x + w, cords[0].y + h);
    craft(x * 1.2, y * 0.9);
    craft(cords[4].x + bw, cords[4].y);
    craft(cords[4].x, cords[4].y + h);
    craft(cords[4].x + bw, cords[4].y + h);
  }
}

class Standard2x1Box extends CrystalBox {
  
  public Standard2x1Box(float x, float y) {
    this(x, y, 1.0);
  }
  
  public Standard2x1Box(float x, float y, float factor) {
    super(x, y, 200 * factor, 100 * factor);
  }
  
}

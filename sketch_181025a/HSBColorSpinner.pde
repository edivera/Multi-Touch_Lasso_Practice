//make the partitions on build so that you don't need to change the color mode so often and the object can remain immutable
//push and pop don't save the color mode

//class HSBColorSpinner {
//  
//  private final float MAX_HUE = 240.0;
//  private final float MAX_SAT = 240.0;
//  private final float MAX_BRI = 240.0;
//
//  private color firstColor = 0;
//  private int colorPartitions = 12;
//  private float nextColorStep = 0.0;
//  private float baseSat = 0.0;
//  private float baseBri = 0.0;
//  
//  public HSBColorSpinner() {
//    defaultColor();
//  }
//  public HSBColorSpinner(int colorPartitions) {
//    this();
//    this.colorPartitions = colorPartitions;
//    this.nextColorStep = MAX_HUE / colorPartitions;
//  }
//  public HSBColorSpinner(color firstColor, int colorPartitions) {
//    this(colorPartitions);
//    color fc = firstColor;
//    
//    pushMatrix();
//    colorMode(HSB, MAX_HUE, MAX_SAT, MAX_BRI);
//    this.firstColor = color(hue(fc), sat(fc), bri(fc));
//    popMatrix();
//  }
//  
//  public color firstColor() {
//    return color(firstColor);
//  }
//  public color nextColor() {
//    pushMatrix();
//    colorMode(HSB, MAX_HUE, MAX_SAT, MAX_BRI);
//    color returnColor = color(color((int)(hue(ref) + MAX_HUE / 12) % (int)MAX_HUE, saturation(ref), brightness(ref)));
//    popMatrix();
//    return returnColor;
//  }
//  
//  private void defaultColor() {
//    pushMatrix();
//    colorMode(HSB, MAX_HUE, MAX_SAT, MAX_BRI);
//    firstColor = color(0, 240, 160);
//    popMatrix();
//  }
//  
//}

class Point {
  
  float x;
  float y;
  float red;
  float green;
  float blue;
  
  Point(float i, float j, float r, float g, float b) {
    x = i;
    y = j;
    red = r;
    blue = b;
    green = g;
  }
  
  public float getX() {
    return x;
  }
  
  public float getY() {
    return y;
  }
  
  public color getColor() {
    return color(red,green,blue);
  }
  
  void show() {
    fill(color(red,green,blue));
    noStroke();
    circle(x,y,5);
  }
}

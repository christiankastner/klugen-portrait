PImage portrait;

ArrayList<Point> points = new ArrayList(); 
float threshold = .25;

void setup() {
  size(580, 625);
  portrait = loadImage("portrait2.png");
  loadPixels();
  portrait.loadPixels();
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      Integer loc = i + j*width;
      float r = red(portrait.pixels[loc]);
      float g = green(portrait.pixels[loc]);
      float b = blue(portrait.pixels[loc]);
      if (r > 250 & g > 250 & b > 250) {
      } else {
        float val = random(0, 100);
        if (val < threshold) {
          points.add(new Point(i,j,r,g,b));
        }
      }
      pixels[loc] = color(250, 250, 250);
    }
  }
  updatePixels();
  for (int i = 0; i < points.size(); i++) {
    for (int z = 0; z < i; z++) {
      if (dist(points.get(i).getX(), points.get(i).getY(), points.get(z).getX(), points.get(z).getY()) < 70) {
        color a = points.get(z).getColor();
        color b = points.get(i).getColor();
        stroke(a);
        strokeWeight(.65);
        line(points.get(i).getX(), points.get(i).getY(), points.get(z).getX(), points.get(z).getY());
      }
    }
  }
}

void draw() {
}

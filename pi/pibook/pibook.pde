String pi;

void setup() {
  size (600,600);
  pi = loadStrings("hunthow.txt")[0];
  println(pi.length());

  float w = 12;
  float h = 12;
  int index = 0;
  for(float y = 0; y < height; y += h) {
    for(float x = 0; x < width; x += w) {
      String stir = "" + pi.charAt(index);
      int digit = int(stir);
      float bright = map(digit, 0, 9, 0, 255);
      fill(0, bright, 0);
      rect(x,y,w,h);
      fill(255-bright);
      textAlign(CENTER);
      text(digit, x+w/2, y+h);
      index ++;
    }
  }
  
}
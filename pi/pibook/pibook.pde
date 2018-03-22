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
      fill(0, random(255), 9);
      rect(x,y,w,h);
      
    }
  }
  
}
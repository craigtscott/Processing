import processing.pdf.*;

String pi;

void setup() {
  size (600,600);
  pi = loadStrings("hunthow.txt")[0];

  beginRecord(PDF, "bookofpi.pdf");
  float cols = 100;
  float rows = 100;
  float w = width/cols;
  float h = height/rows;
  int index = 0;
  for(float y = 0; y < height; y += h) {
    for(float x = 0; x < width; x += w) {
      String stir = "" + pi.charAt(index);
      int digit = int(stir);
      float bright = map(digit, 0, 9, 0, 255);
      fill(0, bright, 0);
      rect(x,y,w,h);
      //fill(255-bright);
      //textAlign(CENTER, CENTER);
      //text(digit, x+w/2, y+h/2);
      index ++;
    }
  }
    println(index);
  endRecord();
}
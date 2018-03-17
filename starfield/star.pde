class Star {
  float x;
  float y;
  float z;
  
  Star() {
    x = random(-width/2, width/2);
    y = random(-height/2, height/2);
    z = random(width);
  }
  
  void update() {
    z = z-1;
    if (z < 1) {
      x = random(-width/2, width/2);
      y = random(-height/2, height/2);
      z = random(width);
    }
      
    
  }
  
  void show() {
    fill(255);
    noStroke();
    float sx = map(x/z, 0, 1, 0, width);
    float sy = map(y/z, 0, 1, 0, height);
    ellipse(sx,sy,4,4);
  }
}
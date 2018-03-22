String pi;

void setup() {
  size (600,600);


  float w = 12;
  float h = 12;
  
  for(float y = 0; y < height; y += h) {
    for(float x = 0; x < width; x += w) {
      fill(0, random(255), 9);
      rect(x,y,w,h)
      
    }
  }
  
}
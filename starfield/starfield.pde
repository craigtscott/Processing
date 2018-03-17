Star[] stars = new Star[100];
void setup() {
  size(600,600);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  background(0);
   for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
  
}
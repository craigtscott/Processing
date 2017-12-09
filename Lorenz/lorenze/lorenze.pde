float x = 1;
float y = 2;
float z = 0;

float sigma = 10;
float roe = 28;
float beta = 8/3;

void setup() {
  size(800,600, P3D);
  background(0);
}

void draw () {
  float dt = 0.01;
  float dx = (sigma * (y - x)) * dt;
  float dy = (x * (roe - z) - y) * dt;
  float dz = (x * y - beta * z) * dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;
  
  translate(400, 300);
  scale(5);
  stroke(255);
  point(x, y, z);
}
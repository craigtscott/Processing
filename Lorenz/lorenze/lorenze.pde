float x = 1;
float y = 2;
float z = 0;

float sigma = 10;
float roe = 28;
float beta = 8/3;

ArrayList<PVector> points = new ArrayList<PVector>();

void setup() {
  size(800,600, P3D);
  colorMode(HSB);
}

void draw () {
  background(0);
  float hu = 0;
  float dt = 0.01;
  float dx = (sigma * (y - x)) * dt;
  float dy = (x * (roe - z) - y) * dt;
  float dz = (x * y - beta * z) * dt;
  x = x + dx;
  y = y + dy;
  z = z + dz;
  
  points.add(new PVector(x,y,z));
  
  translate(400, 300);
  scale(5);
  stroke(255);
  noFill();
  
  
  beginShape();
  for (PVector v : points) {
    stroke(hu, 255, 255);
    vertex(v.x, v.y, v.z);
    hu += .1;
    if (hu >= 255) {
      hu = 0;
    }
    
  }
  endShape();
}
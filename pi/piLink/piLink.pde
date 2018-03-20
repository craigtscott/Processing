String pi;
int[] digits;
int[] counts = new int[10];
int current = 0;

void setup() {
  size (600,600);
  pi = loadStrings("hunthow.txt")[0];
  println(pi.length());
  String[] sdigits = pi.split("");
  println(sdigits.length);
  digits = int(sdigits);
  background(51);
}

void draw() {
  translate(width/2, height/2);
  int currentDigit = digits[current];
  int nextDigit = digits[current+1];
  current++;
  float a1 = map(currentDigit, 0, 10, 0, TWO_PI);
  float b1 = map(nextDigit, 0, 10, 0 , TWO_PI);
  
  float x1 = 200 * cos(a1);
  float y1 = 200 * sin(a1);
  float x2 = 200 * cos(b1);
  float y2 = 200 * sin(b1);
  
  stroke(255);
  line(x1,y1,x2,y2);
  
}
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
  
}

void draw() {
  background(51);
  translate(width/2, height/2);
  int currentDigit = digits[current];
  current++;
  counts[currentDigit]++;
  
  float w = width / counts.length;
  for (int i = 0; i < counts.length; i++){
    float a = map(i, 0, counts.length, 0, TWO_PI);
    float x = 225 * cos(a);
    float y = 225 * sin(a);
    int diam = counts[i];
    ellipse(x,y,diam,diam);
  }
}
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
  int currentDigit = digits[current];
  current++;
  counts[currentDigit]++;
  
  float w = width / counts.length;
  for (int i = 0; i < counts.length; i++){
    float x = i * w + w/2;
    float y = height/2;
    int diam = counts[i];
    ellipse(x,y,diam,diam);
  }
}
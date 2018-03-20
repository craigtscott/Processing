String pi;
int[] didgets;

void setup() {
  size (600,600);
  pi = loadStrings("hunthow.txt")[0];
  println(pi.length());
  String[] sdigits = pi.split("");
  println(sdigits.length);
}

void draw() {
  
}
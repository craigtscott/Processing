int[][] grid;
 int x = 300;
 int y = 300;
 int dir = 0;
 int north = 0;
 int east = 1;
 int south = 2;
 int west = 3;

void setup(){
 size(600,600);
 grid = new int[width][height];


}

void turnRight() {
  println(dir);
  dir++;
  if (dir > west) {
    dir = north;
  }
}

void turnLeft() {
  dir--;
  if (dir < north) {
    dir = west;
  }
}

void moveForward(){
  if (dir == north){
   y--; 
  } else if (dir == east){
    x++; 
  } else if (dir == south){
    y++; 
  } else if (dir == west) {
    x--;
  }
  
  if ( x > width-1) {
   x = 0; 
  } else if ( x < 0 ) {
   x = width-1; 
  } 
  if ( y > 599) {
   y = 0; 
  } else if ( y < 0 ) {
   x = height-1; 
  }
}

void draw() {
  background(255);
  
  
  for (int n = 0; n < 1000; n++) {
    int state = grid[x][y];
    if (state == 0) {
      turnRight();
      grid[x][y] = 1;
      moveForward();
    } else if (state == 1) {
      turnLeft();
      grid[x][y] = 0;
      moveForward();
    }
  }
  
  loadPixels();
  for(int i = 0; i < width; i ++){
    for (int j = 0; j < height; j++){
      int pix = i + width * j;
      if (grid[i][j] == 0) {
        pixels[pix] = color(255);
    } else {
      pixels[pix] = color(0);
    }
   }
  updatePixels();

  }
}
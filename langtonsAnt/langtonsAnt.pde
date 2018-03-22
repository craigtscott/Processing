int[][] grid;

void setup(){
 size(600,600);
 grid = new int[height][width];
 int x = 300;
 int y = 300;
 int dir;
 int north = 0;
 int east = 1;
 int south = 2;
 int west = 3;
 dir = north;
}

void turnRight() {
  dir++;
  if (dir > west) {
    dir = north
  }
}

void turnleft() {
  dir--;
  if (dir < north) {
    dir = west
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
  
  if ( x > width) {
   x = 0; 
  } else if ( x < 0 ) {
   x = width - 1; 
  } else  if ( y > height) {
   y = 0; 
  } else if ( y < 0 ) {
   x = height - 1; 
  }
}

void draw() {
  background(255);
  int state = grid[x][y];
  
  if (state == 0) {
    turnRight();
    state[x][y] = 1;
    moveForward();
  } else if (state == 1) {
    turnLeft();
    state[x][y] = 0;
    moveForward();
  }
  
}
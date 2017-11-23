void setup() {
   size(500, 500);
   background(100);
   smooth();
   noLoop();
}

void draw() {
  strokeWeight(3);
  for(int i=1; i<8; i++) {
      for(int j=1; j<4; j++) {
        stroke(40 * i);
        line(i * 50, j * 100, 150 + (i-1) * 50, 100 + 100 * j);
        line(i * 50 + 100, j * 100, 50 + (i-1) * 50, 100 + 100 * j);
      }
  }
}
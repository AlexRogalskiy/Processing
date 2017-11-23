void setup() {
   size(500, 500);
   background(100);
   smooth();
   noLoop();
}

void draw() {
  strokeWeight(3);
  for(int i=1; i<8; i++) {
      stroke(40 * i);
      line(i * 50, 200, 150 + (i-1) * 50, 300);
      line(i * 50 + 100, 200, 50 + (i-1) * 50, 300);
  }
}
void setup() {
   size(500, 500);
   background(100);
   noStroke();
   smooth();
   noLoop();
}

void draw() {
  strokeWeight(3);
  for(int i=1; i<15; i++) {
      fill(20 * i);
      rect(30 * i + 50, 220, 25, 25);
  }
}
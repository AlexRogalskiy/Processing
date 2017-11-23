void setup() {
   size(500, 500);
   background(100);
   smooth();
   noLoop();
}

void draw() {
  stroke(255);
  strokeWeight(10);
  point(200, 200);
  strokeWeight(30);
  point(300, 200);
  strokeWeight(50);
  point(200, 300);
  strokeWeight(80);
  point(300, 300);
}
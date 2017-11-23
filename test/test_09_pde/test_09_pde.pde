void setup() {
   size(500, 500);
   background(100);
   smooth();
   noLoop();
}

void draw() {
  stroke(94, 206, 40, 50);
  strokeWeight(140);
  line(100, 100, 400, 100);
  
  stroke(94, 206, 40, 100);
  strokeWeight(140);
  line(100, 200, 400, 200);
  
  stroke(94, 206, 40, 150);
  strokeWeight(140);
  line(100, 300, 400, 300);
  
  stroke(94, 206, 40, 250);
  strokeWeight(140);
  line(100, 400, 400, 400);
}
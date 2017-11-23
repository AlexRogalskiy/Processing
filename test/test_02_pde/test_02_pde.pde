void setup() {
   size(400, 500);
   background(10);
   strokeWeight(30);
   stroke(150);
   smooth();
   noLoop();
}

void draw() {
  rectMode(CENTER);//CORNER/CORNERS/CENTER/RADIUS/
  fill(250);
  rect(100, 150, 100, 150);
  fill(50);
  rect(200, 250, 100, 150);
}
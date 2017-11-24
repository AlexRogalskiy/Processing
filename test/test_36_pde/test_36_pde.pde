void setup() {
   size(500, 500);
   background(255);
   smooth();
   strokeWeight(3);
   stroke(0, 150, 255, 100);
   rectMode(CENTER);
   //noLoop();
}

void draw() {
   fill(50);
   rect(mouseX, mouseY, 50, 50);
}
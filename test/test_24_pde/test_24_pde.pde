void setup() {
   size(600, 600);
   background(0);
   smooth();
   strokeWeight(3);
   //noLoop();
}

int flug = 1;

void keyPressed() {
  if('w' == key) {
      flug = 255;
  }
  if('b' == key) {
    flug = 0;        
  }
  if('s' == key) {
    saveFrame("processing.png");
  }
}

void draw() {
   stroke(flug, 20);
   float y2 = mouseY + random(-10, 10) * 10;
   float x2 = mouseX + random(-10, 10) * 10;
   line(mouseX, mouseY, x2, y2);
}
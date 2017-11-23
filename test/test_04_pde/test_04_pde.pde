int wWidth;
int wHeight;
int ellipseSize = 100;
int ellipseWidth = 200;
int ellipseHeight = 300;

void setup() {
   size(500, 500);
   wWidth = 500;
   wHeight = 500;
   
   background(255);
   smooth();
   noLoop();
   fill(150, 180, 170, 60);
   stroke(100);
   strokeWeight(3);
}

void draw() {
  ellipseMode(CENTER);
  ellipse(wWidth / 2, wHeight / 2 - ellipseSize / 2, ellipseWidth, ellipseHeight);
  ellipse(wWidth / 2 - ellipseSize / 2, wHeight / 2, ellipseWidth, ellipseHeight);
  ellipse(wWidth / 2 + ellipseSize / 2, wHeight / 2, ellipseWidth, ellipseHeight);
  ellipse(wWidth / 2, wHeight / 2 + ellipseSize / 2, ellipseWidth, ellipseHeight);
}
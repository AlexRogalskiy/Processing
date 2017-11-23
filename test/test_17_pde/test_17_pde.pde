int stepX;
int stepY;

void setup() {
   size(500, 500);
   background(100);
   smooth();
   //noLoop();
}

void draw() {
  colorMode(HSB, width, height, 100);
  stepX = mouseX + 2;
  stepY = mouseY + 2;
  for(int gridY=0; gridY<height; gridY+=stepY) {
     for(int gridX=0; gridX<width; gridX+=stepX) {
        stroke(gridX, height-gridY, 100);
        strokeWeight(stepX);
        line(gridX, gridY, stepX+gridX, stepY+gridY);
     }
  }
}
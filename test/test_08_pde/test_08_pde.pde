void setup() {
   size(600, 600);
   background(100);
   smooth();
   noStroke();
   noLoop();
}

void drawScene(float baseColor) {
  fill(baseColor);
  rect(0, 50, 150, 50);
  rect(50, 0, 50, 150);
}

void draw() {
  pushMatrix();
  
  translate(100, 0);
  rotate(PI / 4);
  drawScene(180);
  popMatrix();
  
  pushMatrix();
  translate(220, 110);
  rotate(PI / 6);
  scale(2);
  drawScene(220);
  popMatrix();
  
  pushMatrix();
  translate(520, 350);
  rotate(PI / 3);
  scale(1.4);
  drawScene(80);
  popMatrix();
}
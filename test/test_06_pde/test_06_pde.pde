void setup() {
   size(500, 500);
   background(100);
   smooth();
   noLoop();
}

void draw() {
  strokeWeight(50);
  translate(width /2, height / 2);
  stroke(210);
  line(0, 0, 250, 0);
  
  rotate(PI / 4);
  stroke(175);
  line(0, 0, 250, 30);
  
  rotate(PI / 4);
  stroke(140);
  line(0, 0, 250, 30);
  
  rotate(PI / 4);
  stroke(105);
  line(0, 0, 250, 30);
  
  rotate(PI / 4);
  stroke(70);
  line(0, 0, 250, 30);
  
  rotate(PI / 4);
  stroke(0);
  line(0, 0, 250, 30);
}
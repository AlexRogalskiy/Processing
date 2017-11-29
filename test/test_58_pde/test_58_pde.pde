PFont font;
float rotateCounter = 0;

void setup() {
   size(800, 600);
   smooth();
   background(10);
   //noLoop();
   font = loadFont("ARCHRISTY-48.vlw");
   textFont(font, 48);
   //fill(178, 7, 157);
}

void draw() {
  translate(width / 2, height / 2);
  
  pushMatrix();
  rotate(rotateCounter);
  fill(255);
  text("The world", mouseX - width / 2, mouseY - height / 2);
  popMatrix();
  
  pushMatrix();
  rotate(-rotateCounter * 1.5);
  fill(0);
  text("is not enough", width / 2 - mouseX, height / 2 - mouseY);
  popMatrix();
  
  rotateCounter += 0.05;
}
PImage img;

void setup() {
   background(100);
   smooth();
   size(800, 800);
   img = loadImage("16b13a4acf8d3d93de43cd86dd0.jpg");
}

void draw() {
   image(img, mouseX, mouseY); 
}
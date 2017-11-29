PImage img1;
PImage img2;
PImage img3;
PImage img4;

void setup() {
  size(650, 488);
  background(100);
  smooth();
  noStroke();
  img1 = loadImage("2a0abf8e3f4b8551b078ffed0b4.jpg");
  img4 = loadImage("16b13a4acf8d3d93de43cd86dd0.jpg");
  //noLoop();
}

void draw() {
   if(1 == frameCount) {
      image(img1, 0, 0); 
   }
   int val2 = (int) random(0, 150);
   int val3 = (int) random(0, 150);
   
   img2 = img1.get(mouseX + val2, 0, 20, height);
   img3 = img1.get(mouseX + val3, 0, 5, height);
   
   blendMode(SUBTRACT);
   tint(2550, 20);
   image(img2, mouseX + val2, random(0, height));
   
   blendMode(BLEND);
   noTint();
   image(img3, mouseX - val3, 0);
   
   image(img4, 0, 0);
}
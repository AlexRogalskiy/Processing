PImage img1;
PImage img2;

void setup() {
   size(650, 495);
   background(100);
   smooth();
   //noLoop();
   img1 = loadImage("2a0abf8e3f4b8551b078ffed0b4.jpg");
   img2 = loadImage("2a0abf8e3f4b8551b078ffed0b3.jpg");
   img1.loadPixels();
}

void draw() {
  if(1 == frameCount) {
     image(img2, 0, 0); 
  }
  
  float pointSize = map(mouseX, 0, width, 0, 100);
  float pointAplha = map(mouseY, 0, height, 0, 255);
  
  int x = (int) random(img1.width);
  int y = (int) random(img1.height);
  
  int loc = x + y * img1.width;
  float r = red(img1.pixels[loc]);
  float g = green(img1.pixels[loc]);
  float b = blue(img1.pixels[loc]);
  
  fill(r, g, b, pointAplha);
  ellipse(x, y, pointSize, pointSize);
  
  tint(255, 2);
  image(img2, 0, 0);
}
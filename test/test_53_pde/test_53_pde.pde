PImage img1;
PImage img2;

void setup() {
   size(900, 600);
   background(100);
   smooth();
   //noLoop();
   img1 = loadImage("0fcf894e325fb4c439d4d12372d.jpg");
   img2 = loadImage("7a48484f93195e6043b517296fe.jpg");
}

void draw() {
   float map1 = map(mouseX, 0, width, 0, 255);
   float map2 = map(mouseX, 0, width, 255, 0);
   
   tint(255, map2);
   image(img1, 0, 0);
   tint(255, map1);
   image(img2, 0, 0);
}
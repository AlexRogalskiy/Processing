PImage img1;
PImage img2;

void setup() {
   size(1200, 390);
   background(100);
   smooth();
   //noLoop();
   colorMode(HSB);
   img1 = loadImage("26ac7003c4228420359aef984ae_prev.jpg");
   img2 = loadImage("862afb5daae154a635df1fa6346_prev.jpg");
}

void draw() {
   for(int i=0; i<10; i++) {
      //tint(i * 25, 150, 255);
      tint(255, 128);
      if(mouseX < i * 120 + 120 && mouseX > i * 120) {
         noTint();
         image(img2, i * 120, 0);
      } else {
         image(img1, i * 120, 0); 
      }
   }
}
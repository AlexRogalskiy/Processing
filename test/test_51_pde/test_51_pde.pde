PImage img1;
PImage img2;
PImage img3;
boolean isAnimate = true;
int curFrame = 1;

void setup() {
   background(100);
   smooth();
   size(500, 500);
   frameRate(12);
   img1 = loadImage("0fcf894e325fb4c439d4d12372d.jpg");
   img2 = loadImage("2a0abf8e3f4b8551b078ffed0b4.jpg");
   img3 = loadImage("2b4515adf9eee855bec1f014c71.jpg");
}

void draw() {
   if(isAnimate) {
      switch(curFrame) {
         case 1:
           image(img1, mouseX, mouseY);
           break;
         case 2:
           image(img2, mouseX, mouseY);
           break;
         case 3:
           image(img3, mouseX, mouseY);
           break;
      }
      curFrame++;
      if(curFrame > 3) {
         curFrame = 1; 
      }
   } else {
      image(img1, mouseX, mouseY); 
   }
}

void keyPressed() {
   isAnimate = !isAnimate; 
}
import processing.video.*;

Capture video;
int size;

void setup() {
   size(640, 480);
   smooth();
   background(10);
   noStroke();
   video = new Capture(this, width, height);
   video.start();
}

void draw() {
   if(video.available()) {
      video.read();
      if(0 == frameCount % 3) {
         blendMode(ADD); 
      } else {
         blendMode(BLEND); 
      }
      float x = random(0, width);
      PImage img = video.get((int)x, 0, size, height);
      image(img, (int) x, 0);
      size = (int) random(1, 50);
   }
   pushMatrix();
   scale(-1, 1);
   image(video, -width, 0);
   popMatrix();
}
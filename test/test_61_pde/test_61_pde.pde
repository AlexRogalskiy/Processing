import processing.video.*;

Capture video;

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
   }
   pushMatrix();
   scale(-1, 1);
   image(video, -width, 0);
   popMatrix();
}
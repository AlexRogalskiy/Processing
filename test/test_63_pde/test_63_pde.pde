import processing.video.*;

Capture video;

void setup() {
   size(640, 480);
   smooth();
   background(0);
   noStroke();
   video = new Capture(this, width, height);
   video.start();
}

void draw() {
   if(video.available()) {
      video.read();
      if(mouseX > 20 && mouseY > 20) {
         if(mouseX < width - 20 && mouseY < height - 20) {
            if(0 == frameCount % 5) {
               blendMode(BLEND);
               noTint();
               fill(0, 10);
               rect(0, 0, width, height);
            } else {
               blendMode(ADD); 
            }
            
            float x = mouseX + random(-100, 00);
            float y = mouseY + random(-100, 100);
            float wx = 20 + random(200);
            float wy = 20 + random(200);
            PImage img = video.get(mouseX, mouseY, (int) wx, (int) wy);
            tint(random(50, 255), random(50, 255), random(50, 255));
            image(img, x, y);
         }
      }
   }
}
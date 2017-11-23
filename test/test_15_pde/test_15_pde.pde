void setup() {
   size(500, 500);
   background(100);
   strokeWeight(3);
   smooth();
   //noLoop();
}

void draw() {
    stroke(frameCount);
    line(frameCount, 100, 100 + frameCount, 200);
    line(100 + frameCount, 100, frameCount, 200);
}
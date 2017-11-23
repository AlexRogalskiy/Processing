void setup() {
   size(600, 600);
   background(0);
   smooth();
   strokeWeight(3);
   stroke(250);
   noLoop();
}

float cx = 250;
float cy = 250;
float cRadius = 200;

void draw() {
    for(float i=0; i<2*PI; i+=2*PI/12) {
      float x1 = cos(i) * cRadius + cx;
      float y1 = sin(i) * cRadius + cy;
      line(x1, y1, x1, y1);
    }
    line(cx, cy, cx, cy);
}
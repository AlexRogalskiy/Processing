void setup() {
   size(600, 600);
   background(0);
   smooth();
   strokeWeight(3);
   stroke(250);
   //noLoop();
}

float counter = 0;
float cx = 250;
float cy = 250;
float cRadius = 200;
int mColor = 0;

void draw() {
    float x1 = sin(counter) * cRadius + cx;
    float y1 = sin(counter) * cRadius + cy;
    mColor += 1;
    stroke(mColor);
    line(cx, cy, x1, y1);
    counter += (2 * PI/255);
    if(counter > 2 * PI) {
       counter = 0;
       mColor = 0;
       background(50);
    }
}
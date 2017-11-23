void setup() {
   size(500, 500);
   background(100);
   noStroke();
   smooth();
   noLoop();
}

void draw() {
  ellipseMode(CENTER);
  float border = 50;
  float nWindow = width - 2 * border;
  float nHeight = height - 2 * border;
  float number = 5;
  float nWStep = nWindow / number;
  float nHStep = nHeight / number;
  for(int i=0; i<number; i++) {
     for(int j=0; j<number; j++) {
        float x = border + j * nWStep + nWStep / 2;
        float y = border + i * nHStep + nHStep / 2;
        float size = 5 + (i + j) * 10;
        float mColor = size * 2.5;
        fill(mColor, 20, 50);
        ellipse(x, y, size, size);
        fill(250);
        ellipse(x, y, 3, 3);
     }
  }
}
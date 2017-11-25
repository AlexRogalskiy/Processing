float lgDiam;
float lgRad;
float lgCirc;
float smDiam;
float cx;
float cy;

void setup() {
   size(500, 400);
   background(100);
   smooth();
   noStroke();
   lgDiam = width * 0.55;
   lgRad = lgDiam / 2;
   lgCirc = PI * lgDiam;
   cx = width / 2;
   cy = height / 2;
   colorMode(HSB);
   //noLoop();
}

void draw() {
   fill(0, 10);
   rect(0, 0, width, height);
   
   int num = (int) map(mouseX, 0, width, 6, 50);
   smDiam = (lgCirc / num);
   int colour = (int) map(mouseY, 0, height, 150, 255);
   fill(colour, 180, 190, 100);
   
   for(int i=0; i<=num; i++) {
      float angle = i * TWO_PI / num;
      float x = cx + cos(angle) * lgRad;
      float y = cy + sin(angle) * lgRad;
      ellipse(x, y, smDiam, smDiam);
   }
   filter(BLUR, 3);
}
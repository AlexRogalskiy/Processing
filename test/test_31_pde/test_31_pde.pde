void setup() {
   size(600, 600);
   background(255);
   smooth();
   strokeWeight(3);
   //noLoop();
}

float counter = 0;
float counter2 = 0;
float nx, ny;
float cx = 250;
float cy = 250;
float cRadius = 10;

void draw() {
   stroke(0, 50);
   float nx = sin(counter2) * cRadius + cx;
   float ny = cos(counter2) * cRadius + cy;
   
   float x1 = nx - sin(counter) * 50;
   float y1 = ny - cos(counter) * 50;
   float x2 = nx + sin(counter) * 50;
   float y2 = ny + cos(counter) * 50;
   line(x1, y1, x2, y2);
   
   counter += 0.1;
   if(counter > 2 * PI) {
      counter = 0; 
   }
   counter2 += 0.01;
   cRadius += counter2 / 30;
   if(counter2 > 2 * PI) {
      counter2 = 0; 
   }
}
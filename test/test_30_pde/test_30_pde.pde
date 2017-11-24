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
int switcher = 1;

void draw() {
   if(switcher > 0) {
      nx = cos(counter2) * cRadius + cx;
      ny = sin(counter2) * cRadius + cy;
      stroke(0, 50);
   } else {
     nx = sin(counter2) * cRadius + cx;
     ny = cos(counter2) * cRadius + cy;
     stroke(250, 50);
   }
   
   switcher *= -1;
   
   float x1 = nx - sin(counter) * 30;
   float y1 = ny - cos(counter) * 30;
   float x2 = nx + sin(counter) * 30;
   float y2 = ny + cos(counter) * 30;
   line(x1, y1, x2, y2);
   
   counter += 0.1;
   if(counter > 2 * PI) {
      counter = 0; 
   }
   counter2 += 0.01;
   cRadius += counter / 50;
   if(counter2 > 2 * PI) {
      counter2 = 0; 
   }
}
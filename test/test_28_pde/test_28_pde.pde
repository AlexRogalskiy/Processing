void setup() {
   size(600, 600);
   background(255);
   smooth();
   strokeWeight(3);
   stroke(200, 30);
   //noLoop();
}

float counter = 0;
float counter2 = 0;
float cx = width / 2;
float cy = height / 2;
float nx;
float ny;
float radius = 20;
float cRadius = 100;
float cRadius2 = 150;

void drawLine(float ncX, float ncY) {
   float x1 = ncX - sin(counter2) * cRadius;
   float y1 = ncY - cos(counter2) * cRadius;
   float x2 = ncX + sin(counter2) * cRadius;
   float y2 = ncY + cos(counter2) * cRadius;
   line(x1, y1, x2, y2);
}
void draw() {
    nx = sin(counter2) * radius + cx;
    ny = cos(counter2) * radius + cy;
    
    float x1 = nx - sin(counter) * cRadius2;
    float y1 = ny - cos(counter) * cRadius2;
    float x2 = nx + sin(counter) * cRadius2;
    float y2 = ny + cos(counter) * cRadius2;
    
    drawLine(x2, y2);
    drawLine(x1, y1);
    
    counter += 0.1;
    if(counter > 2 * PI) {
       counter = 0;
    }
    counter2 += 0.01;
    radius += counter / 20;
    if(counter2 > 2 * PI) {
      counter2 = 0;  
    }
}
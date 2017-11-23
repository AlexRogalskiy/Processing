void setup() {
   size(600, 600);
   background(255);
   smooth();
   strokeWeight(3);
   stroke(0, 30);
   //noLoop();
}

float counter = 0;
float counter2 = 0;
float cx = 250;
float cy = 250;
float cRadius = 200;

void draw() {
    float nx = sin(counter2) * cRadius + cx;
    float ny = cos(counter2) * cRadius + cy;
    
    float x1 = nx / 2 - sin(counter) * cRadius;
    float y1 = ny - cos(counter) * cRadius;
    float x2 = nx / 2 + sin(counter) * cRadius;
    float y2 = ny + cos(counter) * cRadius;
    
    line(x1, y1, x2, y2);
    counter += 0.1;
    if(counter > 2 * PI) {
       counter = 0;
    }
    counter2 += 0.01;
    if(counter2 > 2 * PI) {
      counter2 = 0;  
    }
}
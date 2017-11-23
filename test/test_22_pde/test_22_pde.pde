void setup() {
   size(600, 600);
   background(0);
   smooth();
   //noLoop();
}

int i = 0;
int k = 1;
int flug = 1;

void update() {
   i += k;
  if(255 == i) {
     k = -1; 
  }
  if(0 == i) {
     k = 1; 
  } 
}

void draw() {
   stroke(i, 20);
   float r = random(-20, 20);
   float y1 = mouseY - r;
   float y2 = mouseY + r;
   line(0, y1, 500, y2);
   update();
}
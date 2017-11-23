int l1x1 = 0;
int l1y1 = 0;
int l1x2 = 500;
int l1y2 = 500;
int flug = 1;

float mr = 10;
float mg = 150;
float mb = 100;
float mt = 25;

void setup() {
   size(500, 500);
   background(100);
   smooth();
   //noLoop();
}

void draw() {
  strokeWeight(120);
  stroke(mr, mg, mb, mt);
  line(l1x1, l1y1, l1x2, l1y2);
  for(int i=1; i<20; i++) {
     int k = i * 50;
     stroke(mr, mg, mb, (255 / 11) * i);
     line(l1x1 + k, l1y1, l1x2, l1y2 - k);
     line(l1x1, l1y1 + k, l1x2 - k, l1y2);
     
     if(l1x1 == l1x2 || (l1x1 + k) == l1x2 || l1x1 == (l1x2 - k)) {
        mr = random(0, 150);
        mg = random(0, 150);
        mb = random(0, 150);
     }
     
     l1x1 += flug;
     l1y1 += flug;
     l1x2 -= flug;
     l1y2 -= flug;
     
     if(l1y2 < 0 || l1y2 > 500) {
       flug *= -1;
     }
  }
}
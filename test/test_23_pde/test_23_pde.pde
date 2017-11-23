void setup() {
   size(600, 600);
   background(0);
   smooth();
   noStroke();
   colorMode(HSB);
   //noLoop();
}

boolean flug = true;

void mouseClicked() {
  flug = !flug;  
}

void draw() {
   if(flug) {
     for(int i=0; i<10; i++) {
        for(int j=0; j<5; j++) {
           fill(random(0, 255), random(0, 255), random(0, 250));
           rect(j * 40 + 50, i * 40 + 50, 35, 35);
           rect((10 - j) * 40 + 10, i * 40 + 50, 35, 35);
        }
     }
   }
}
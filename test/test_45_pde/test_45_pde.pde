float[][] a = new float[500][2];

void setup() {
   size(600, 600);
   for(int i=0; i<a.length; i++) {
      for(int j=0; j<a[i].length; j++) {
         a[i][j] = random(10, 500); 
      }
   }
   smooth();
   //noLoop();
}

void draw() {
  noStroke();
  background(0);
  for(int i=0; i<a.length; i++) {
     float dist = dist(mouseX, mouseY, a[i][0], a[i][1]);
     float size = map(dist, 0, 200, 5, 100);
     float colour = map(dist, 0, 200, 50, 255);
     
     fill(colour, 200, 150, 50);
     float cx = noise(mouseX) * 10 + a[i][0];
     float cy = noise(mouseY) * 10 + a[i][1];
     ellipse(cx, cy, size, size);
  }
}
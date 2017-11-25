int k = (int) random(5, 15);
int[] xCoordinate = new int[k];

void setup() {
   size(800, 600);
   smooth();
   noStroke();
   int start = (width - k * 35) / 2;
   for(int i=0; i<xCoordinate.length; i++) {
      xCoordinate[i] = start + 35 * i; 
   }
   //noLoop();
}

void draw() {
   background(50);
   for(int coordinate: xCoordinate) {
      fill(200);
      ellipse(coordinate, 250, 30, 30);
      fill(0);
      ellipse(coordinate, 250, 3, 3);
   }
}
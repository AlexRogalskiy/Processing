int[] xCoordinate = new int[10];

void setup() {
   size(800, 600);
   smooth();
   noStroke();
   int start = (width - xCoordinate.length * 35) / 2;
   for(int i=0; i<xCoordinate.length; i++) {
      xCoordinate[i] = start + 35 * i; 
   }
   //noLoop();
}

void draw() {
   background(50);
   for(int i=0; i<xCoordinate.length; i++) {
      fill(200, 40);
      ellipse(xCoordinate[i], 250, 15 * i, 15 * i);
      fill(0);
      ellipse(xCoordinate[i], 250, 3, 3);
   }
}
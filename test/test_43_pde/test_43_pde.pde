int[] xCoordinate = new int[30];

void setup() {
   size(800, 600);
   smooth();
   noStroke();
   init();
   //noLoop();
}

void init() {
   for(int i=0; i<xCoordinate.length; i++) {
      xCoordinate[i] = 250 + (int) random(-100, 100);
      println(xCoordinate[i]);
   } 
}

void draw() {
   background(50);
   for(int i=0; i<xCoordinate.length; i++) {
      fill(20);
      ellipse(xCoordinate[i], 250, 5, 5);
      fill(250, 40);
      ellipse(xCoordinate[i], 250, 10 * i, 10 * i);
   }
   if(mouseX > 250) {
      init(); 
   }
}
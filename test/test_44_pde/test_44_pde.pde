int num = 10;
int step = 50;
int[][] a = {
   {50, 133, 40},
   {132, 87, 90},
   {12, 287, 10},
   {300, 407, 30},
   {232, 187, 190},
   {448, 300, 79},
   {460, 450, 32}
};

void setup() {
   size(600, 600);
   smooth();
   noStroke();
   //noLoop();
}

float counter = 0;

void draw() {
   background(127);
   for(int i=0; i<a.length; i++) {
      float angle = counter / (float)(1 + i);
      float colour = map(sin(angle), -1, 1, 0, 255);
      fill(colour);
      ellipse(a[i][0], a[i][1], a[i][2], a[i][2]);
      counter += 0.01;
   }
}
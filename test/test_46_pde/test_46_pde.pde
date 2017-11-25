private int[][] a = new int[10][];
private int step = 30;

void setup() {
  size(600, 600);
  smooth();
  noStroke();
  init();
  //noLoop();
}

void init() {
   for(int i=0; i<a.length; i++) {
      a[i] = new int[(int)random(0, 10)];
      for(int j=0; j<a[i].length; j++) {
         a[i][j] = (int) random(0, 25); 
      }
   }
}

void draw() {
   fill(180, 50);
   background(10);
   for(int i=0; i<a.length; i++) {
      for(int j=0; j<a[i].length; j++) {
         stroke(100);
         strokeWeight(3);
         fill(50);
         rect(i*step + 100, j*step + 100, step, step);
         noStroke();
         fill(250, 90);
         ellipse(i*step + 115, j*step + 115, a[i][j], a[i][j]);
      }
   }
}

void mouseClicked() {
   init(); 
}
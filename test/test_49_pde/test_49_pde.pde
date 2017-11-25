class E {
   float x;
   float y;
   E(float x, float y) {
      this.x = x;
      this.y = y;
   }
}

float a = 2.085;
float b = -1.504;
float c = 1.511;
float d = -3.393;

ArrayList<E> es = new ArrayList<E>();

void setup() {
   size(600, 600);
   smooth();
   noStroke();
   ellipseMode(CENTER);
   background(250);
   fill(0, 5);
   //noLoop();
   
   float step = 1.0f / 500.0f;
   for(float x=0; x<1; x += step) {
      for(float y=0; y<1; y += step) {
         E temp = new E(x, y);
         es.add(temp);
      }
   }
}

void draw() {
   for(E e: es) {
      float nx = sin(a * e.y) - cos(b * e.x);
      float ny = sin(c * e.x) - cos(d * e.y);
      ellipse(nx * 100 + width / 2, ny * 100 + height / 2, 1, 1);
      e.x = nx;
      e.y = ny;
   }
}
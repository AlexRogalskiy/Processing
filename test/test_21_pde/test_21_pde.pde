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
 strokeWeight(3);
 stroke(i, 20);
  if(1 == flug) {
    line(mouseX, mouseY, 500, random(0, 500));
  } else {
    line(mouseX, mouseY, 0, random(0, 500));
  }
  update();
}

void keyPressed() {
   if('q' == key) {
      flug *= -1; 
   }
   if('s' == key) {
      saveFrame("myProcessing.png") ;
   }
}
void setup() {
   size(600, 600);
   background(0);
   smooth();
   //noLoop();
}

int i = 0;
int k = 1;

void draw() {
 strokeWeight(3);
 stroke(i, 20);
 line(mouseX, mouseY, random(0, 500), 500);
 i += k;
 if(255 == i) {
    k = -1; 
 }
 if(0 == i) {
    k = 1; 
 }
}

void keyPressed() {
   if('s' == key) {
      saveFrame("myProcessing.png") ;
   }
}
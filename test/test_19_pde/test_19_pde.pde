void setup() {
   size(300, 300);
   background(0);
   smooth();
   //noLoop();
}

int i = 0;
int k = 1;

void draw() {
 strokeWeight(30);
 stroke(i, 20);
 line(mouseX - 50, mouseY - 50, 100 + mouseX - 50, 100 + mouseY - 50);
 line(100 + mouseX - 50, mouseY - 50, mouseX - 50, 100 + mouseY - 50);
 i += k;
 if(255 == i) {
    k = -1; 
 }
 if(0 == i) {
    k = 1; 
 }
}
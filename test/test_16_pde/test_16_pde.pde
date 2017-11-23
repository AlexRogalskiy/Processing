void setup() {
   size(500, 500);
   background(100);
   smooth();
   noStroke();
   //noLoop();
}

float counter;

void draw() {
    fill(10, 50);
    rect(-1, -1, width + 1, height + 1);
    float ny = sin(counter) * 100 + 200;
    float nx = counter * 10;
    stroke(250);
    strokeWeight(20);
    line(nx, ny, nx, ny);
    
    counter += 0.1;
    
    if(nx > width) {
       counter = 0; 
    }
}

void keyPressed() {
   if('s' == key) {
      saveFrame("myProcessing.png"); 
   }
}
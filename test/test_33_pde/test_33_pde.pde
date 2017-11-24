void setup() {
   size(600, 600);
   background(255);
   smooth();
   strokeWeight(3);
   //noLoop();
}

void draw() {
   float anc1X = mouseX;
   float anc1Y = mouseY;
   float cont1X = width / 2;
   float cont1Y = height / 2 - 100;
   float cont2X = width / 2;
   float cont2Y = height / 2 + 100;
   float anc2X = width - mouseX;
   float anc2Y = height - mouseY;
   
   noFill();
   bezier(anc1X, anc1Y, cont1X, cont1Y, cont2X, cont2Y, anc2X, anc2Y);
   
   stroke(0, 50);
   line(anc1X, anc1Y, cont1X, cont1Y);
   line(anc2X, anc2Y, cont2X, cont2Y);
   
   fill(150);
   noStroke();
   rectMode(CENTER);
   rect(cont1X, cont1Y, 6, 6);
   rect(cont2X, cont2Y, 6, 6);
   
   fill(170, 0, 0);
   noStroke();
   ellipseMode(CENTER);
   ellipse(anc1X, anc1Y, 10, 10);
   ellipse(anc2X, anc2Y, 10, 10);
}
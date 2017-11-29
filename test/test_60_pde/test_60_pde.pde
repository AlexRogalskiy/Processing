PShape drawingSVG;
PShape[] borders;
int vertexCount;

void setup() {
   size(600, 600);
   smooth();
   //noLoop();
   background(0);
   drawingSVG = loadShape("menu.svg");
   borders = new PShape[3];
   borders[0] = drawingSVG.getChild("path01");
   borders[1] = drawingSVG.getChild("path02");
   borders[2] = drawingSVG.getChild("path03");
}

void draw() {
   for(int j=0; j<3; j++) {
      vertexCount = borders[j].getVertexCount();
      for(int i=0; i<vertexCount-1; i++) {
         float vx = borders[j].getVertexX(i) + 50;
         float vy = borders[j].getVertexY(i) - 750;
         stroke(0, 50);
         if(dist(mouseX, mouseY, vx, vy) < 10) {
            line(mouseX, mouseY, vx, vy); 
         }
      }
   }
   //filter(BLUR, 1);
}

//void draw() {
//   noStroke();
//   fill(100, 10);
//   rect(0, 0, width, height);
   
//   stroke(200, 150);
//   strokeWeight(3);
//   fill(100, 200);
//   drawingSVG.disableStyle();
//   noFill();
   
//   for(int j=0; j<3; j++) {
//      vertexCount = borders[j].getVertexCount();
//      for(int i=0; i<vertexCount-1; i+=2) {
//         float vx = borders[j].getVertexX(i) + 50;
//         float vy = borders[j].getVertexY(i) - 750;
//         float vx1 = borders[j].getVertexX(i+1) + 50;
//         float vy1 = borders[j].getVertexY(i+1) - 750;
         
//         float vcx1 = vx + random(-10, 10);
//         float vcx2 = vx1 + random(-10, 10);
//         float vcy1 = vy + random(-10, 10);
//         float vcy2 = vy1 + random(-10, 10);
         
//         float letterColour = map(sin(sinCounter), -1, 1, 0, 255);
//         stroke(letterColour, 50);
         
//         if(sinCounter < TWO_PI) {
//            float cv = map(mouseX, 0, width, 0, 0.5);
//            sinCounter += cv;
//         } else {
//            sinCounter = 0; 
//         }
//         bezier(vx, vy, vcx1, vcy1, vcx2, vcy2, vx1, vy1);
//      }
//   }
//   //filter(BlUR, 1);
//}
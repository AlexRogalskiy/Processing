PShape drawingSVG;

void setup() {
   background(100);
   smooth();
   strokeWeight(3);
   size(600, 600);
   drawingSVG = loadShape("menu.svg");
   //size((int) drawingSVG.width, (int) drawingSVG.height);
}

void shapeDraw(PShape pShape) {
   for(int i=0; i<pShape.getVertexCount(); i++) {
      float vx = pShape.getVertexX(i) - 45;
      float vy = pShape.getVertexY(i) - 60;
      float lx1 = vx + random(-150, 150);
      float ly1 = vy + random(-150, 150);
      float lx = mouseX + random(-150, 150);
      float ly = mouseY + random(-150, 150);
      float mCursor = map(mouseX, 0, width, 0, 255);
      stroke(mCursor, 10);
      noFill();
      bezier(vx, vy, lx, ly, lx1, ly1, vx, vy);
      //ellipse(vx, vy, 3, 3);
   }
}

void draw() {
   fill(10, 15);
   rect(0, 0, width, height);
   drawingSVG.disableStyle();
   shape(drawingSVG, 0, 0);
   
   PShape border = drawingSVG.getChild("path01");
   shapeDraw(border);
   
   //float mCursor = map(mouseX, 0, width, 100, 155);
   //fill(10, 100);
   //drawingSVG.disableStyle();
   //shape(drawingSVG, 0, 0);
}
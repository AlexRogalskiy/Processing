class Rectangle {
   float cX;
   float cY;
   float cSize;
   
   void setCenter(float cX, float cY) {
      this.cX = cX;
      this.cY = cY;
   }
   
   void setSize(float cSize) {
      this.cSize = cSize; 
   }
   
   void render() {
      rect(this.cX, this.cY, this.cSize, this.cSize); 
   }
}

Rectangle rectObj = new Rectangle();
Rectangle rectObj2 = new Rectangle();
float counter = 0;

void setup() {
   size(500, 500);
   background(255);
   smooth();
   strokeWeight(3);
   stroke(0, 150, 255, 100);
   rectMode(CENTER);
   rectObj.setSize(50);
   rectObj2.setSize(50);
   //noLoop();
}

void draw() {
   fill(50);
   float objX = mouseX + sin(counter) * 150;
   float objY = mouseY + cos(counter) * 150;
   
   rectObj.setCenter(mouseX, mouseY);
   rectObj.render();
   rectObj2.setCenter(objX, objY);
   rectObj2.render();
   
   counter += 0.5;
}

void mouseClicked() {
   float curSize = rectObj2.cSize;
   curSize += 5;
   rectObj2.setSize(curSize);
}
class Line {
   float centerX;
   float centerY;
   float length;
   float angle;
   float weight;
   
   public void render() {
      float x1 = centerX - cos(angle) * length / 2;
      float y1 = centerY + sin(angle) * length / 2;
      float x2 = centerX + cos(angle) * length / 2;
      float y2 = centerY - sin(angle) * length / 2;
      
      stroke(50, 100);
      strokeWeight(weight);
      line(x1, y1, x2, y2);
      strokeWeight(5);
      stroke(50);
      line(x2, y2, x2, y2);
      line(x1, y1, x1, y1);
   }
}

Line lineObj;
float counter;
float radius;

void setup() {
   size(600, 600);
   background(255);
   smooth();
   strokeWeight(3);
   stroke(0, 150, 255, 100);
   //noLoop();
   lineObj = new Line();
   lineObj.centerX = width / 2;
   lineObj.centerY = height / 2;
   lineObj.length = 350;
   lineObj.angle = PI / 4;
   lineObj.weight = 1;
   radius = 50;
}

void draw() {
   counter += 0.05;
   if(counter > TWO_PI) {
      counter = 0;
      radius += 50;
   }
   lineObj.centerX = mouseX + sin(counter) * radius; // width / 2
   lineObj.centerY = mouseY + cos(counter) * radius; // height / 2
   lineObj.angle = counter * 2;
   lineObj.render();
}
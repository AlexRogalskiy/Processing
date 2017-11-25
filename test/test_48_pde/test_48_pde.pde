class Point {
   float x;
   float y;
   Point(float x, float y) {
      this.x = x;
      this.y = y;
   }
   
   boolean isDistanceLessThen(float dist, Point point) {
      boolean result = false;
      float curDist = dist(point.x, point.y, this.x, this.y);
      if(curDist < dist) {
         result = true; 
      }
      return result;
   }
}

ArrayList<Point> pointList = new ArrayList<Point>();
Point curPoint;
float curDist = 10.0;

void setup() {
   size(600, 600);
   smooth();
   background(255);
   strokeWeight(3);
   //noLoop()
}

void draw() {
   stroke(0, 20);
   curPoint = new Point(mouseX, mouseY);
   pointList.add(curPoint);
   update();
}

void update() {
   for(Point point : pointList) {
      if(point.isDistanceLessThen(curDist, curPoint)) {
         line(point.x, point.y, curPoint.x, curPoint.y); 
      }
   }
}

void keyPressed() {
   for(int i=1; i<10; i++) {
      if(Integer.toString(i).charAt(0) == key) {
         curDist = 10 * i; 
      }
   }
}
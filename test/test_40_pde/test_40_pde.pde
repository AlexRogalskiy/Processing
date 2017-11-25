class FunnyEllipse {
   int colour = 200;
   float size, x, y;
   boolean noise;
   
   FunnyEllipse() {
      this.size = random(50, 150);
   }
   
   public void render() {
     ellipseMode(CENTER);
     fill(this.colour, 100);
     noStroke();
     if(this.noise) {
        fill(random(150, 255), 150);
        float nx = this.x + noise(x) * 10;
        float ny = this.y + noise(y) * 10;
        ellipse(nx, ny, this.size, this.size);
     } else {
        ellipse(this.x, this.y, this.size, this.size); 
     }
   }
   
   private boolean isLine(FunnyEllipse ellipse) {
      boolean result = false;
      if(dist(this.x, this.y, ellipse.x, ellipse.y) < 150) {
         result = true;
         ellipse.noise = true;
      } else {
         ellipse.noise = false; 
      }
      noise = result;
      return result;
   }
   
   void drawLine(FunnyEllipse ellipse) {
      stroke(255);
      strokeWeight(3);
      line(this.x, this.y, ellipse.x, ellipse.y);
      noStroke();
      fill(10);
      ellipseMode(CENTER);
      ellipse(this.x, this.y, 10, 10);
      ellipse(ellipse.x, ellipse.y, 10, 10);
   }
}

FunnyEllipse obj1, obj2;
float counter = 0;

void setup() {
   size(500, 500);
   smooth();
   obj1 = new FunnyEllipse();
   obj2 = new FunnyEllipse();
   //noLoop();
}

void draw() {
   background(10);
   obj1.x = map(sin(counter), -1, 1, 100, width - 100);
   obj2.x = map(cos(counter), -1, 1, 100, width - 100);
   obj1.y = map(cos(counter + 0.1), -1, 1, 100, width - 100);
   obj2.y = map(sin(counter - 0.1), -1, 1, 100, width - 100);
   obj1.render();
   obj2.render();
   if(obj1.isLine(obj2)) {
      obj1.drawLine(obj2); 
   }
   counter += 0.01;
}
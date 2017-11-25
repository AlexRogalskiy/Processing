class Ellipse {
   float centerX;
   float centerY;
   float angle;
   float size;
   float weight;
   
   Ellipse(float centerX, float centerY, float angle, float size, float weight) {
      this.centerX = centerX;
      this.centerY = centerY;
      this.angle = angle;
      this.size = size;
      this.weight = weight;
   }
   
   public void render() {
      fill(200, this.size / 20);
      float x1 = this.centerX - cos(this.angle) * this.size / 2;
      float y1 = this.centerY + sin(this.angle) * this.size / 2;
      stroke(250, 100);
      strokeWeight(this.weight);
      ellipse(x1, y1, this.size, this.size);
   }
}

Ellipse ellipseObj;

void setup() {
   size(500, 500);
   smooth();
   background(10);
   ellipseObj = new Ellipse(width / 2, height / 2, 0, 150, 1);
   //noLoop();
}

float counter = 0;

void draw() {
    counter += 0.01;
    if(counter > TWO_PI) {
       counter = 0; 
    }
    ellipseObj.size = sin(counter * 4f) * mouseX;
    ellipseObj.render();
}
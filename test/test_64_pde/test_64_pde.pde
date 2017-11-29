class LightParticle {
   float x, y;
   float cx, cy;
   float size;
   float step;
   float dist;
   float angle;
   float counter;
   
   LightParticle(float cx, float cy, float size, float step, float dist, float angle) {
      this.cx = cx;
      this.cy = cy;
      this.size = size;
      this.dist = dist;
      this.step = step;
      this.angle = angle;
   }
   
   void render() {
      counter += step;
      if(counter > TWO_PI) {
         counter = 0; 
      }
      if(counter < 0) {
         counter = TWO_PI; 
      }
      float x1 = this.x - sin(counter) * (size / 2);
      float x2 = this.x + sin(counter) * (size / 2);
      float y1 = this.y - cos(counter) * (size / 2);
      float y2 = this.y + cos(counter) * (size / 2);
      
      line(x1, y1, x2, y2);
      
      float x3 = this.x - sin(counter + PI/2) * (size / 2);
      float x4 = this.x + sin(counter + PI/2) * (size / 2);
      float y3 = this.y - cos(counter + PI/2) * (size / 2);
      float y4 = this.y + cos(counter + PI/2) * (size / 2);
      
      line(x3, y3, x4, y4);
   }
}

class ParticleController {
   ArrayList<LightParticle> arr = new ArrayList<LightParticle>();
   int counter;
   
   void createParticles(float x, float y, int num) {
      for(int i=0; i<num; i++) {
         LightParticle lObj = new LightParticle(x, y, random(5, 60), random(-0.5, 0.5), random(0.5, 5), random(0, 360));
         arr.add(lObj);
      }
   }
   
   void update(float x, float y) {
     ArrayList<LightParticle> removeList = new ArrayList<LightParticle>();
     //counter++;
      for(LightParticle temp : arr) {
         //temp.x += temp.dist;
         //temp.y += temp.dist;
         temp.x = temp.cx + sin(radians(temp.angle)) * (temp.dist * counter);
         temp.y = temp.cy - cos(radians(temp.angle)) * (temp.dist * counter);
         if(temp.x < 0 || temp.x > 500 || temp.y < 0 || temp.y > 500) {
            removeList.add(temp); 
         }
      }
      for(LightParticle temp : removeList) {
         arr.remove(temp); 
      }
   }
   
   void render(PImage pimg) {
      counter++;
      stroke(250, 200);
      for(LightParticle temp : arr) {
         strokeWeight(temp.size / 5);
         if(null != pimg) {
            if(temp.x > 0 && temp.x < 500 && temp.y > 0 && temp.y < 500) {
               int loc = (int) temp.x + (int) temp.y * pimg.width;
               float r = red(pimg.pixels[loc]);
               float g = green(pimg.pixels[loc]);
               float b = blue(pimg.pixels[loc]);
               stroke(r, g, b);
            }
            temp.render();
         } else {
           pushMatrix();
           translate(temp.cx, temp.cy);
           rotate(radians(temp.angle));
           temp.render();
           popMatrix();
         }
      }
   }
}

ArrayList<ParticleController> pcs = new ArrayList<ParticleController>();
PImage pimg;

void setup() {
   size(500, 500);
   smooth();
   //pController.createParticles(width / 2, height / 2, 10);
   background(50);
   pimg = loadImage("0fcf894e325fb4c439d4d12372d.jpg");
   pimg.loadPixels();
   //noLoop();
}

void draw() {
   //fill(0, 20);
   //rect(0, 0, width, height);
   background(20);
   for(ParticleController current : pcs) {
     current.update(mouseX, mouseY);
     current.render(pimg);
   }
}

void mouseClicked() {
   ParticleController pController = new ParticleController();
   pController.createParticles(mouseX, mouseY, 600);
   pcs.add(pController);
}

void keyPressed() {
   if('q' == key) {
      for(ParticleController current : pcs) {
         int num = current.arr.size();
         println(num);
      }
   }
}
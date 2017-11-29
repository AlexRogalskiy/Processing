class RectParticle {
   float x, y;
   float cx, cy;
   float size;
   float step;
   float dist;
   float counter;
   
   RectParticle(float cx, float cy, float size, float step, float dist) {
      this.cx = cx;
      this.cy = cy;
      this.size = size;
      this.dist = dist;
      this.step = step;
   }
   
   void render() {
     ellipse(this.x, this.y, this.size, this.size);
   }
}

class ParticleController {
   ArrayList<RectParticle> arr = new ArrayList<RectParticle>();
   
   void createParticles(float size, PShape border) {
      for(int i=0; i<border.getVertexCount(); i++) {
         float vx = border.getVertexX(i);
         float vy = border.getVertexY(i) - 550;
         RectParticle obj = new RectParticle(vx, vy, size, random(-0.01, 0.01), random(20, 500));
         arr.add(obj);
      }
   }
   
   void update(float dimmer) {
     for(RectParticle temp : arr) {
        temp.counter += temp.step;
        temp.x = temp.cx + sin(temp.counter) * (temp.dist * dimmer);
        temp.y = temp.cy - cos(temp.counter) * (temp.dist * dimmer);
     }
   }
   
   void render() {
      noStroke();
      fill(200, 200);
      for(RectParticle temp : arr) {
         temp.render();
         for(RectParticle temp2 : arr) {
            stroke(200, 50);
            if(dist(temp2.x, temp2.y, temp.x, temp.y) < 40) {
               line(temp2.x, temp2.y, temp.x, temp.y); 
            }
         }
      }
   }
}

ParticleController pc = new ParticleController();

void setup() {
   size(500, 500);
   smooth();
   background(0, 0, 0, 50);
   PShape drawingSVG = loadShape("logo.svg");
   PShape border = drawingSVG.getChild("bottom");
   pc.createParticles(15, border);
   shape(drawingSVG, 0, 0);
   ellipseMode(CENTER);
   //noLoop();
}

void draw() {
   //background(0);
   float var = 0;
   if(mouseX < width / 2) {
      var = map(mouseX, 0, width / 2, 1, 0);
   } else {
      var = map(mouseX, width, width / 2, 1, 0); 
   }
   pc.update(var);
   pc.render();
}
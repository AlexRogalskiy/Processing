class EParticle {
   float x, y;
   float cx, cy;
   float size;
   float step;
   float dist;
   float counter;
   EParticle prev;
   
   EParticle(float cx, float cy, float size, float step, float dist) {
      this.cx = cx;
      this.cy = cy;
      this.size = size;
      this.dist = dist;
      this.step = step;
   }
   
   void render() {
     if(null != this.prev) {
        stroke(200, 50);
        line(this.prev.x, this.prev.y, this.x, this.y);
     }
     ellipse(this.x, this.y, this.size, this.size);
   }
}

class ParticleController {
   ArrayList<EParticle> arr = new ArrayList<EParticle>();
   int counter;
   
   void createParticles(float size, PShape border) {
     EParticle prev = null;
      for(int i=0; i<border.getVertexCount(); i++) {
         float vx = border.getVertexX(i);
         float vy = border.getVertexY(i) - 550;
         EParticle obj = new EParticle(vx, vy, size, random(-0.05, 0.05), random(20, 500));
         if(0 != i) {
            obj.prev = prev; 
         }
         arr.add(obj);
         prev = obj;
      }
   }
   
   void update(float dimmer) {
     for(EParticle temp : arr) {
        temp.counter += temp.step;
        temp.x = temp.cx + sin(temp.counter) * (temp.dist * dimmer);
        temp.y = temp.cy - cos(temp.counter) * (temp.dist * dimmer);
     }
   }
   
   void render() {
      noStroke();
      fill(200, 200);
      for(EParticle temp : arr) {
         temp.render();
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
   //fill(0, 20);
   //rect(0, 0, width, height);
   //background(20);
   float var = 0;
   if(mouseX < width / 2) {
      var = map(mouseX, 0, width / 2, 1, 0);
   } else {
      var = map(mouseX, width, width / 2, 1, 0); 
   }
   pc.update(var);
   pc.render();
}
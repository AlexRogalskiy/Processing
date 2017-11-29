class EParticle {
   float x, y;
   float cx, cy;
   float size;
   float step;
   float dist;
   float counter;
   float mr, mg, mb;
   
   EParticle(float cx, float cy, float size, float step, float dist) {
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
   ArrayList<EParticle> arr = new ArrayList<EParticle>();
   int counter;
   
   void createParticles(float size, PImage pimg) {
      for(int py=0; py<pimg.height; py+=size) {
         for(int px=0; px<pimg.width; px+=size) {
            EParticle obj = new EParticle(px, py, size, random(-0.2, 0.2), random(20, 500));
            int loc = (int) px + (int) py * pimg.width;
            obj.mr = red(pimg.pixels[loc]);
            obj.mg = green(pimg.pixels[loc]);
            obj.mb = blue(pimg.pixels[loc]);
            arr.add(obj);
         }
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
      for(EParticle temp : arr) {
         fill(temp.mr, temp.mg, temp.mb);
         temp.render();
      }
   }
}

ParticleController pc = new ParticleController();
PImage pimg;

void setup() {
   size(500, 500);
   smooth();
   //pController.createParticles(width / 2, height / 2, 10);
   background(50);
   pimg = loadImage("0fcf894e325fb4c439d4d12372d.jpg");
   pimg.loadPixels();
   pc.createParticles(15, pimg);
   ellipseMode(CENTER);
   //noLoop();
}

void draw() {
   //fill(0, 20);
   //rect(0, 0, width, height);
   background(20);
   float var = 0;
   if(mouseX < width / 2) {
      var = map(mouseX, 0, width / 2, 1, 0);
   } else {
      var = map(mouseX, width, width / 2, 1, 0); 
   }
   pc.update(var);
   pc.render();
}
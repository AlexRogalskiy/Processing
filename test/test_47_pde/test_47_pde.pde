class SuperBall {
    float x;
    float y;
    float radius;
    float speed;
    float counter;
    float center = 250;
    int colour = 160;
    SuperBall prevBall;
    int vector = 1;
    
    void render() {
       noStroke();
       fill(200, 100);
       ellipse(this.x, this.y, this.radius, this.radius);
       stroke(10);
       strokeWeight(3);
       if(null != this.prevBall) {
          line(this.x, this.y, this.prevBall.x, this.prevBall.y);
          noStroke();
       }
       fill(colour);
       ellipse(this.x, this.y, 6, 6);
    }
    
    void update() {
        this.counter += this.speed * this.vector / 300;
        y = this.center + sin(this.counter) * 30;
        if(null != this.prevBall) {
           this.center = this.prevBall.y; 
        }
        if(this.counter > TWO_PI) {
           this.vector *= -1; 
        }
        //if(y > 500 || y < 0) {
        //   vector *= -1; 
        //}
    }
}

SuperBall[] ballArr1, ballArr2;

void setup() {
   size(500, 500);
   smooth();
   init();
   //noLoop();
}

void init() {
    int num = 15;
    float step = (float) width / (float) num;
    ballArr1 = new SuperBall[num];
    for(int i=0; i<ballArr1.length; i++) {
       SuperBall temp = new SuperBall();
       float var = random(5, 30);
       temp.x = var + step * i + 20;
       temp.y = random(-100, 100) + 100;
       temp.radius = var * 2 + 10;
       temp.speed = random(0.2, 10);
       if(i > 0) {
          temp.prevBall = ballArr1[i-1]; 
       }
       ballArr1[i] = temp;
    }
    ballArr2 = ballArr1;
}

void draw() {
   background(50);
   ballArr1[0].y = mouseY;
   for(int i=0; i<ballArr1.length; i++) {
      SuperBall curBall = ballArr1[i];
      if(0 != i) {
         curBall.update(); 
      }
      curBall.render();
   }
}

void keyPressed() {
   if('a' == key) init();
   if('q' == key) ballArr2[0].radius = 300;
}
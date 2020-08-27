  Ball ball1;
  Ball ball2;
  
  void setup() {
    size(800, 800);
    
    ball1 = new Ball((int)random(1, 10), (int)random(1, 10));
    ball2 = new Ball((int)random(1, 10), (int)random(1, 10));
  }
  
  void draw() {
    background(0);
    ball1.show();
    ball1.update();
    ball1.checkEdges();
    
    ball2.show();
    ball2.update();
    ball2.checkEdges();
    
    float dist = dist(ball1.posX, ball1.posY, ball2.posX, ball2.posY);
    
    if (dist <= 100) {
      //ball1.velX = -ball1.velX;
      //ball1.velY = -ball1.velY;
      //ball2.velX = -ball2.velX;
      //ball2.velY = -ball2.velY;
      ball1.velX = ball1.posX - ball2.posX;
      ball2.velX = ball1.posX - ball2.posX;
      ball1.velY = ball1.posY - ball2.posY;
      ball2.velY = ball1.posY - ball2.posY;
      println(dist);
    }
    
   
  }

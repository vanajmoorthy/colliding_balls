class Ball {
  float posX;
  float posY;
  float velX;
  float velY;

  Ball(int velX, int velY) {
    this.posX = random(0, 800); 
    this.posY = random(0, 800);
    this.velX = velX;
    this.velY = velY;
  } 

  void show() {
    fill(255);
    noStroke();  
    ellipse(posX, posY, 100, 100);
  }

  void update() {
    posX += velX;
    posY += velY;
  }
  
  void checkEdges() {
    if (posX >= 800 - 50 || posX <= 50) {
      velX = -velX;
    }
    
    if (posY >= 800 - 50 || posY <= 50) {
      velY = -velY;
    }
  }
}

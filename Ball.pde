class Ball{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float ballSize;
  float colorR;
  float colorG;
  float colorB;

  
  Ball(float tempR, float tempG, float tempB){
    x = random(width);
    y = random(height);
    xSpeed = random(3);
    ySpeed = random(4);
    ballSize = random(15, 45);
    colorR = tempR;
    colorG = tempG;
    colorB = tempB;
  }

  void displayBall() {
    fill(colorR, colorG, colorB);
    noStroke();
    ellipse( x, y, ballSize, ballSize);
  }

  void moveBall() {
    x = x + xSpeed;
    y = y + ySpeed;
  }

  void checkEdges() {
    if (x > width || x < 0 ) {
      xSpeed = xSpeed * -1;
      //fill(random(255), random(255), random(255));
      //ballSize = random(20, 60);
    }

    if (y > height || y < 0) {
      ySpeed = ySpeed * -1;
      //fill(random(255), random(255), random(255));
      //ballSize = random(20, 60);
    }
  }
}

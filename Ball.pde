class Ball{
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float ballSize;
  color[] ballColor = {#0000FF, #808080, #A9FF00, #1E1E1E, #FF0000};
  float colorR = int(random(255));
  float colorG = int(random(255));
  float colorB = int(random(255));
  int index;

  Ball(){
    x = random(width/2, width/3);
    y = random(height/2, height/3);
    xSpeed = random(-3, 3);
    ySpeed = random(-4, 4);
    ballSize = random(15, 45);
    index = int(random(ballColor.length));
  }

  void displayBall() {
    fill(ballColor[index]);
    noStroke();
    ellipse( x, y, ballSize, ballSize);
  }

  void moveBall() {
    x = x + xSpeed;
    y = y + ySpeed;
  }

  void checkEdges() {
    if (x + (ballSize/2) > width || x - (ballSize/2) < 0 ) {
      xSpeed = xSpeed * -1;
      //fill(random(255), random(255), random(255));
      //ballSize = random(20, 60);
    }

    if (y + (ballSize/2) > height || y - (ballSize/2) < 0) {
      ySpeed = ySpeed * -1;
      //fill(random(255), random(255), random(255));
      //ballSize = random(20, 60);
    }
  }
}

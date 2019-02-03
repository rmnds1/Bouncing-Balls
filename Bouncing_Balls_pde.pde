/**
 * s                   : save png
 * p                   : save pdf
 */


import processing.svg.*;
import java.util.Calendar;
import processing.pdf.*;
boolean savePDF = false;

Ball[] b = new Ball[1000];

void setup() {
  //frameRate(1000);
  //fullScreen(P2D);
  size(640, 360, P2D);
  for(int i=0; i<b.length; i++){
    b[i] = new Ball(random(255), random(255), random(255));
  }
}

void draw() {
  background(255);
  if (savePDF) beginRecord(PDF, bouncingBalls()+".pdf");
    for(int i=0; i<b.length; i++){
      b[i].displayBall();
      b[i].moveBall();
      b[i].checkEdges();
    }
  
  //saveFrame("output/bouncingBalls_##.png");

}


void keyReleased(){
  if (key=='s' || key=='S') saveFrame(bouncingBalls()+"_##.png");
  if (key=='p' || key=='P') savePDF = true;
}

// Bouncing Balls
String bouncingBalls() {
  Calendar now = Calendar.getInstance();
  return String.format("%1$ty%1$tm%1$td_%1$tH%1$tM%1$tS", now);
}

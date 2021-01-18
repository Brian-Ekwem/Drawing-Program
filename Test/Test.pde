float oldX;
float oldY;
color buttonC, ink;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, backgroundX, backgroundY, backgroundW, backgroundH;
color red=#FF0000, green=#00FF00, blue=#0000FF, yellow=#F7FA00, orange=#FF790A, purple=#6E00DC, white=#FFFFFF, teal=#29FFFD, lime=#A2F01D, pink=#FF79A4, black=#000000, grey=#BFBFBF;
float masterStroke= 1;
Boolean draw=false;

void setup() {
  fullScreen();
  smooth();
  population();
  background(255);
}

void draw() {
  //rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  strokeWeight(1);
  fill(red);
  rect(10, 10, 25, 25 );
  fill(blue);
  rect(35, 10, 25, 25 );
  fill(green);
  rect(10, 35, 25, 25);
  fill(yellow);
  rect(35, 35, 25, 25);
  fill(orange);
  rect(10, 60, 25, 25);
  fill(purple);
  rect(35, 60, 25, 25);
  fill(teal);
  rect(10, 85, 25, 25);
  fill(lime);
  rect(35, 85, 25, 25);
  fill(pink);
  rect(10, 110, 25, 25);
  fill(grey);
  rect(35, 110, 25, 25);
  fill(white);
  rect(10, 135, 25, 25);
  fill(black);
  rect(35, 135, 25, 25);
  line(450, 30, 500, 30);
  strokeWeight(4);
  line(450, 50, 500, 50);
  strokeWeight(8);
  line(450, 80, 500, 80);
  strokeWeight(20);
  line(450, 120, 500, 120);
  strokeWeight(1);
  fill(255);
  rect(250, 10, 50, 50);
  //
  /*if (draw == true &&  mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }*/
  //
  if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) { 
    buttonC = red;
  } else { 
    buttonC = white;
  } 
  strokeWeight(1);
  fill(buttonC);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  textDraw();
  //
  if (mousePressed) {
    if (mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight) exit();
    //
    if (mouseX > 10 && mouseX < 35) {
      if (mouseY >10 && mouseY < 35) {
        stroke(red);
      }
      if (mouseY>35 && mouseY < 60) {
        stroke(green);
      }
      if (mouseY>60 && mouseY<85) {
        stroke(orange);
      }
      if (mouseY>85 && mouseY<110) {
        stroke(teal);
      }
      if (mouseY>110 && mouseY<135) {
        stroke(pink);
      }
      if (mouseY>135 && mouseY<160) {
        stroke(white);
      }
    }
    if (mouseX > 35 && mouseX < 60) {
      if ( mouseY > 10 && mouseY <35) {
        stroke(blue);
      }
      if (mouseY > 35 && mouseY < 50) {
        stroke(yellow);
      }
      if (mouseY > 60 && mouseY < 85) {
        stroke(purple);
      }
      if (mouseY >85 && mouseY < 110) {
        stroke(lime);
      }
      if (mouseY > 110 && mouseY <135) {
        stroke(grey);
      }
      if (mouseY >135 && mouseY <160) {
        stroke(black);
      }
    }
    if (mousePressed) {
      if (mouseX > 450 && mouseX <500) {
        if (mouseY >10 && mouseY <40) {
          masterStroke= 1;
        }
      }
      if (mouseX > 450 && mouseX <500) {
        if (mouseY >40 && mouseY <70) {
          masterStroke= 4;
        }
      }
      if (mouseX > 450 && mouseX <500) {
        if (mouseY > 70 && mouseY <100) {
          masterStroke= 7;
        }
      }
      if (mouseX > 450 && mouseX <500) {
        if (mouseY > 120 && mouseY <120) {
          masterStroke= 20;
        }
      }
      strokeWeight(masterStroke);
    }
    if (mousePressed) {
      if (mouseX > 250 && mouseX <300) {
        if (mouseY > 10 && mouseY <60) {
          background(255);
        }
      }
    }
    if (mousePressed) {
      line(mouseX, mouseY, oldX, oldY);
    }
  }
  oldX=mouseX;
  oldY=mouseY;
}    

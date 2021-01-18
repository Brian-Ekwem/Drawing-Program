// Global Variable
float oldX;
float oldY;
color ink, black=#000000, white=#FFFFFF, red=#FF0000, orange=#FF7C00, yellow=#FFD900, green=#14FF00, blue=#0000FF, pink=#FF00F3, purple=#7600FF, quitButtonColour, eraserpink=#EFD0F0, penyellow=#F0E67E, penbrown=#EADDCC;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter, backgroundX, backgroundY, backgroundW, backgroundH, resetX, resetY, resetW, resetH;
float redX, redY, redW, redH, orangeX, orangeY, orangeW, orangeH, yellowX, yellowY, yellowW, yellowH, greenX, greenY, greenW, greenH, blueX, blueY, blueW, blueH, pinkX, pinkY, pinkW, pinkH, purpleX, purpleY, purpleW, purpleH, blackX, blackY, blackW, blackH;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, thick1X, thick1Y, thick1W, thick1H, thick2X, thick2Y, thick2W, thick2H, thick3X, thick3Y, thick3W, thick3H;
float EraserX, EraserY, EraserW, EraserH, WriteX, WriteY, WriteW, WriteH, PenRectX, PenRectY, PenRectW, PenRectH, PenTriX1, PenTriY1, PenTriX2, PenTriY2, PenTriX3, PenTriY3, blankX, blankY, blankW, blankH;
Boolean draw=false, resetOn=false, redOn=false;

void setup() {
  fullScreen();
  drawingSurface();
  ink = black; 
  fill(white);
  smooth();
  rect(backgroundX, backgroundY, backgroundW, backgroundH);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  fill(red);
  rect(redX, redY, redW, redH);
  fill(orange);
  rect(orangeX, orangeY, orangeW, orangeH);
  fill(yellow);
  rect(yellowX, yellowY, yellowW, yellowH);
  fill(green);
  rect(greenX, greenY, greenW, greenH);
  fill(blue);
  rect(blueX, blueY, blueW, blueH);
  fill(pink);
  rect(pinkX, pinkY, pinkW, pinkH);
  fill(purple);
  rect(purpleX, purpleY, purpleW, purpleH);
  fill(black);
  rect(blackX, blackY, blackW, blackH);
  //
  fill(white);
  rect(resetX, resetY, resetW, resetH);
  textDraw2();
  //
  fill(black);
  rect(thick1X, thick1Y, thick1W, thick1H);
  rect(thick2X, thick2Y, thick2W, thick2H);
  rect(thick3X, thick3Y, thick3W, thick3H);
  //
  fill(eraserpink);
  rect(EraserX, EraserY, EraserW, EraserH);
  textDraw3 ();
  //
  fill(white);
  rect(WriteX, WriteY, WriteW, WriteH);
  fill(penyellow);
  rect(PenRectX, PenRectY, PenRectW, PenRectH);
  fill(penbrown);
  triangle(PenTriX1, PenTriY1, PenTriX2, PenTriY2, PenTriX3, PenTriY3);
  //The remaining buttons are the ones for the music like play, pause e.t.c. Do these after you've finished the music program. For now you can configure the buttons you do have.
  fill(white);
  if (resetOn = true) rect(blankX, blankY, blankW, blankH);
}

void draw() {
  if (draw == true &&  mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) { 
    quitButtonColour = red;
  } else { 
    quitButtonColour = white;
  } 
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  textDraw();
}

void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
  if ( mouseX>resetX && mouseX<resetX+resetW && mouseY>resetY && mouseY<resetY+resetH ) {
    if (resetOn == true) {
      resetOn = false;
    } else { 
      resetOn = true;
    }
  }
  if (mouseX>redX && mouseX<redX+redW && mouseY>redY && mouseY<redY+redH) {
    stroke(red);
  }
}

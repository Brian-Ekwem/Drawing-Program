// Global Variables
color ink, black=#000000, white=#FFFFFF, red=#FF0000, orange=#FF7C00, yellow=#FFD900, green=#14FF00, blue=#0000FF, pink=#FF00F3, purple=#7600FF, quitButtonColour;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
float redX, redY, redW, redH, orangeX, orangeY, orangeW, orangeH, yellowX, yellowY, yellowW, yellowH, greenX, greenY, greenW, greenH, blueX, blueY, blueW, blueH, pinkX, pinkY, pinkW, pinkH, purpleX, purpleY, purpleW, purpleH;
float quitButtonX, quitButtonY, quitButtonW, quitButtonH;
Boolean draw=false;

void setup() {
  fullScreen();
  drawingSurface();
  ink = black; // example to change ink
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
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonW && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonH ) { 
    quitButtonColour = red;
  } else { 
     quitButtonColour = white;
  } 
  textDraw();
  fill(red);
  rect(quitButtonX, quitButtonY, quitButtonW, quitButtonH);
  fill(black);
}

void draw() {
  if (draw == true &&  mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonW && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonH ) exit();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
}

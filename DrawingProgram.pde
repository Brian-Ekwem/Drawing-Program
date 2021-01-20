import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
// Global Variables
Minim minim;
int numberOfSongs = 4;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int loopIntNum = 1;
PImage pic1;
int currentSong = numberOfSongs - numberOfSongs;
float oldX;
float oldY;
float masterStroke= 1;
color f1 = color(0);
color f2 = color(255);
color ink, red=#FF0000, green=#00FF00, blue=#0000FF, yellow=#F7FA00, orange=#FF790A, purple=#6E00DC, white=#FFFFFF, teal=#29FFFD, lime=#A2F01D, pink=#FF79A4, buttonC;
color black=#000000, grey=#BFBFBF, quitButtonColour, eraserpink=#EFD0F0, penyellow=#F0E67E, penbrown=#EADDCC;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter, backgroundX, backgroundY, backgroundW, backgroundH, resetX, resetY, resetW, resetH;
float redX, redY, redW, redH, orangeX, orangeY, orangeW, orangeH, yellowX, yellowY, yellowW, yellowH, greenX, greenY, greenW, greenH, blueX, blueY, blueW, blueH, pinkX, whiteX, whiteY, whiteW, whiteH;
float pinkY, pinkW, pinkH, purpleX, purpleY, purpleW, purpleH, blackX, blackY, blackW, blackH, tealX, tealY, tealW, tealH, limeX, limeY, limeW, limeH, greyX, greyY, greyW, greyH;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight, thick1X, thick1Y, thick1W, thick1H, thick2X, thick2Y, thick2W, thick2H, thick3X, thick3Y, thick3W, thick3H;
float EraserX, EraserY, EraserW, EraserH, WriteX, WriteY, WriteW, WriteH, PenRectX, PenRectY, PenRectW, PenRectH, PenTriX1, PenTriY1, PenTriX2, PenTriY2, PenTriX3, PenTriY3, blankX, blankY, blankW, blankH;
float play1X, play1Y, play2X, play2Y, play3X, play3Y, playCX, playCY, playCD;
float fastA1X, fastA1Y, fastA2X, fastA2Y, fastA3X, fastA3Y, fastB1X, fastB1Y, fastB2X, fastB2Y, fastB3X, fastB3Y;
float rewA1X, rewA1Y, rewA2X, rewA2Y, rewA3X, rewA3Y, rewB1X, rewB1Y, rewB2X, rewB2Y, rewB3X, rewB3Y, stopX, stopY, stopW, stopH;
float nextA1X, nextA1Y, nextA2X, nextA2Y, nextA3X, nextA3Y, nextBX, nextBY, nextBW, nextBH, loopX, loopY, loopD;
float backA1X, backA1Y, backA2X, backA2Y, backA3X, backA3Y, backBX, backBY, backBW, backBH, muteX, muteY, muteW, muteH;
float backrecX, backrecY, backrecW, backrecH, nextrecX, nextrecY, nextrecW, nextrecH, looprecX, looprecY, looprecW, looprecH, fastrecX, fastrecY, fastrecW, fastrecH, rewrecX, rewrecY, rewrecW, rewrecH, playrecX, playrecY, playrecW, playrecH;
Boolean nextOn=false, backOn=false, playOn=false, fastOn=false, rewOn=false, stopOn=false, loopOn=false;
Boolean draw=false, resetOn=false, redOn=false;

void setup() {
  fullScreen();
  population();
  minim = new Minim(this);

  song[currentSong] = minim.loadFile("Music/05. Mii Parade.mp3");
  song[currentSong+=1] = minim.loadFile("Music/06. Shop Channel Title.mp3");
  song[currentSong+=1] = minim.loadFile("Music/07. Shop Channel.mp3");
  song[currentSong+=1] = minim.loadFile("Music/M14. Results (Wii Sports).mp3");
  //
  currentSong = numberOfSongs - numberOfSongs;
  for (int i=currentSong; i<numberOfSongs; i++) {
  }
  //
  font = createFont ("Arial", 55);
  song[currentSong].play();
  //
  ink = black; 
  fill(white);
  smooth();
  //
  rect(fastrecX, fastrecY, fastrecW, fastrecH);
  rect(rewrecX, rewrecY, rewrecW, rewrecH);
  rect(nextrecX, nextrecY, nextrecW, nextrecH);
  rect(backrecX, backrecY, backrecW, backrecH);
  //
  rect(backgroundX, backgroundY, backgroundW, backgroundH);
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  fill(red);
  rect(redX, redY, redW, redH);
  //
  fill(orange);
  rect(orangeX, orangeY, orangeW, orangeH);
  //
  fill(yellow);
  rect(yellowX, yellowY, yellowW, yellowH);
  //
  fill(green);
  rect(greenX, greenY, greenW, greenH);
  //
  fill(blue);
  rect(blueX, blueY, blueW, blueH);
  //
  fill(pink);
  rect(pinkX, pinkY, pinkW, pinkH);
  //
  fill(purple);
  rect(purpleX, purpleY, purpleW, purpleH);
  //
  fill(black);
  rect(blackX, blackY, blackW, blackH);
  //
  fill(teal);
  rect(tealX, tealY, tealW, tealH);
  //
  fill(lime);
  rect(limeX, limeY, limeW, limeH);
  //
  fill(white);
  rect(whiteX, whiteY, whiteW, whiteH);
  //
  fill(grey);
  rect(greyX, greyY, greyW, greyH);
  //
  fill(white);
  rect(resetX, resetY, resetW, resetH);
  textDraw2();
  //
  line(480, 30, 530, 30);
  strokeWeight(4);
  line(480, 50, 530, 50);
  strokeWeight(8);
  line(480, 80, 530, 80);
  strokeWeight(20);
  line(480, 120, 530, 120);
  strokeWeight(1);
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
//
void draw() {
  if (draw == true &&  mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    fill(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  //
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) { 
    quitButtonColour = red;
  } else { 
    quitButtonColour = white;
  } 
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  textDraw();
  //
  if (mousePressed) {
    if (mouseX>resetX && mouseX<resetX+resetW) {
      if (mouseX>resetY && mouseX<resetY+resetH) {
        fill(white);
        rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
      }
    }
  }
  //
  if (mouseX>playrecX && mouseX<playrecX+playrecW && mouseY>playrecY && mouseY<playrecY+playrecH) {
    buttonC = green;
  } else {
    buttonC = red;
  }
  fill(white);
  rect(playrecX, playrecY, playrecW, playrecH); 
  fill(white);
  ellipse(playCX, playCY, playCD, playCD);
  fill(buttonC);
  triangle(play1X, play1Y, play2X, play2Y, play3X, play3Y);
  //
  if (mouseX>fastrecX && mouseX<fastrecX+fastrecW && mouseY>fastrecY && mouseY<fastrecY+fastrecH) {
    buttonC = green;
  } else {
    buttonC = red;
  }
  fill(white);
  fill(buttonC);
  triangle(fastA1X, fastA1Y, fastA2X, fastA2Y, fastA3X, fastA3Y);
  fill(buttonC);
  triangle(fastB1X, fastB1Y, fastB2X, fastB2Y, fastB3X, fastB3Y);
  //
  if (mouseX>rewrecX && mouseX<rewrecX+rewrecW && mouseY>rewrecY && mouseY<rewrecY+rewrecH) {
    buttonC = green;
  } else {
    buttonC = red;
  }
  fill(white);
  fill(buttonC);
  triangle(rewA1X, rewA1Y, rewA2X, rewA2Y, rewA3X, rewA3Y);
  fill(buttonC);
  triangle(rewB1X, rewB1Y, rewB2X, rewB2Y, rewB3X, rewB3Y);
  //
  if (mouseX>stopX && mouseX<stopX+stopW && mouseY>stopY && mouseY<stopY+stopH) {
    buttonC = white;
  } else {
    buttonC = red;
  }
  fill(buttonC);
  rect(stopX, stopY, stopW, stopH);
  //
  if (mouseX>nextrecX && mouseX<nextrecX+nextrecW && mouseY>nextrecY && mouseY<nextrecY+nextrecH) {
    buttonC = white;
  } else {
    buttonC = red;
  }
  fill(white);
  fill(buttonC);
  triangle(nextA1X, nextA1Y, nextA2X, nextA2Y, nextA3X, nextA3Y);
  fill(buttonC);
  rect(nextBX, nextBY, nextBW, nextBH);
  //
  if (mouseX>backrecX && mouseX<backrecX+backrecW && mouseY>backrecY && mouseY<backrecY+backrecH) {
    buttonC = white;
  } else {
    buttonC = red;
  }
  fill(white);
  fill(buttonC);
  triangle(backA1X, backA1Y, backA2X, backA2Y, backA3X, backA3Y);
  fill(buttonC);
  rect(backBX, backBY, backBW, backBH);
  //
}
//
/*void mouseDragged() {
 if (mouseButton == LEFT) {
 noFill();
 stroke(f1);
 strokeWeight(1);
 strokeJoin(ROUND);
 line(mouseX, mouseY, pmouseX, pmouseY);
 }
 if (mouseButton == RIGHT) {
 noFill();
 stroke(f2);
 strokeWeight(1);
 strokeJoin(ROUND);
 line(mouseX, mouseY, pmouseX, pmouseY);
 }
 }*/
//
void mousePressed() {
  if ( mouseX>quitButtonX && mouseX<quitButtonX+quitButtonWidth && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) exit();
  //
  if (mouseX>playrecX && mouseX<playrecX+playrecW && mouseY>playrecY && mouseY<playrecY+playrecH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      song[currentSong].play();
    }
  }
  //
  if (mouseX>fastrecX && mouseX<fastrecX+fastrecW && mouseY>fastrecY && mouseY<fastrecY+fastrecH) song[currentSong].skip(1000);
  //
  if (mouseX>rewrecX && mouseX<rewrecX+rewrecW && mouseY>rewrecY && mouseY<rewrecY+rewrecH) song[currentSong].skip(-1000); 
  //
  if (mouseX>stopX && mouseX<stopX+stopW && mouseY>stopY && mouseY<stopY+stopH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else { 
      song[currentSong].rewind();
    }
  }
  //
  if (mouseX>nextrecX && mouseX<nextrecX+nextrecW && mouseY>nextrecY && mouseY<nextrecY+nextrecH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs-1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++;
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs-1 ) {
        currentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong++;
      }
    }
  }
  //
  if (mouseX>backrecX && mouseX<backrecX+backrecW && mouseY>backrecY && mouseY<backrecY+backrecH) {
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
      song[currentSong].play();
    } else { 
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs-1;
      } else {
        currentSong--;
      }
    }
  }
  //
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
  //
  if (mouseX>redX && mouseX<redX+redW && mouseY>redY && mouseY<redY+redH) {
    stroke(red);
  }
  //
  if (mouseX>orangeX && mouseX<orangeX+orangeW && mouseY>redY && mouseY<redY+redH) {
    stroke(orange);
    masterStroke= 1;
  }
  //
  if (mouseX>yellowX && mouseX<yellowX+yellowW && mouseY>yellowY && mouseY<yellowY+yellowH) {
    stroke(yellow);
    masterStroke= 1;
  }
  //
  if (mouseX>greenX && mouseX<greenX+greenW && mouseY>greenY && mouseY<greenY+greenH) {
    stroke(green);
    masterStroke= 1;
  }
  //
  if (mouseX>blackX && mouseX<blackX+blackW && mouseY>blackY && mouseY<blackY+blackH) {
    stroke(black);
    masterStroke= 1;
  }
  //
  if (mouseX>tealX && mouseX<tealX+tealW && mouseY>tealY && mouseY>tealY+tealH) {
    stroke(teal);
    masterStroke= 1;
  }
  //
  if (mouseX>pinkX && mouseX<pinkX+pinkW && mouseY>pinkY && mouseY<pinkY+pinkH) {
    stroke(pink);
    masterStroke= 1;
  }
  //
  if (mouseX>purpleX && mouseX<purpleX+purpleW && mouseY>purpleY && mouseY<purpleY+purpleH) {
    stroke(purple);
    masterStroke= 1;
  }
  //
  if (mouseX>whiteX && mouseX<whiteX+whiteW && mouseY>whiteY && mouseY<whiteY+whiteH) {
    stroke(white);
    masterStroke= 1;
  }
  //
  if (mouseX>blueX && mouseX<blueX+blueW && mouseY>blueY && mouseY<blueY+blueH) {
    stroke(blue);
    masterStroke= 1;
  }
  //
  if (mouseX>greyX && mouseX<greyX+greyW && mouseY>greyY && mouseY<greyY+greyH) {
    stroke(grey);
    masterStroke= 1;
  }
  //
  if (mouseX>limeX && mouseX<limeX+limeW && mouseY>limeY && mouseY<limeY+limeH) {
    stroke(lime);
    masterStroke= 1;
  }
  //
  if (mouseX>EraserX && mouseX<EraserX+EraserW && mouseY>EraserY && mouseY<EraserY+EraserH) {
    stroke(white);
    masterStroke= 50;
  }
  //
  if (mousePressed) {
    if (mouseX > 480 && mouseX <530) {
      if (mouseY >10 && mouseY <40) {
        masterStroke= 1;
      }
    }
    if (mouseX > 480 && mouseX <530) {
      if (mouseY >40 && mouseY <70) {
        masterStroke= 4;
      }
    }
    if (mouseX > 480 && mouseX <530) {
      if (mouseY > 70 && mouseY <100) {
        masterStroke= 7;
      }
    }
    if (mouseX > 480 && mouseX <530) {
      if (mouseY > 110 && mouseY <140) {
        masterStroke= 20;
      }
    }
    strokeWeight(masterStroke);
  }
}
//

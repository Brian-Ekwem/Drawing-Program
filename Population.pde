void population() {
  drawingSurfaceX = width*1/12;
  drawingSurfaceY = height*2/12;
  drawingSurfaceWidth = width*6/8;
  drawingSurfaceHeight = height*6/8;
  drawingDiameter = width*1/100;
  //
  redX = width*1/12;
  redY = height*1/16;
  redW = width*1/40;
  redH = height*1/30;
  //
  orangeX = width*1.3/12;
  orangeY = height*1/16;
  orangeW = width*1/40;
  orangeH = height*1/30;
  //
  yellowX = width*1.6/12;
  yellowY = height*1/16;
  yellowW = width*1/40;
  yellowH = height*1/30;
  //
  greenX = width*1.9/12;
  greenY = height*1/16;
  greenW = width*1/40;
  greenH = height*1/30;
  //
  blueX = width*2.2/12;
  blueY = height*1/16;
  blueW = width*1/40;
  blueH = height*1/30;
  //
  pinkX = width*2.5/12;
  pinkY = height*1/16;
  pinkW = width*1/40;
  pinkH = height*1/30;
  //
  purpleX = width*1.6/12;
  purpleY = height*1.5/16;
  purpleW = width*1/40;
  purpleH = height*1/30;
  //
  blackX = width*1.9/12;
  blackY = height*1.5/16;
  blackW = width*1/40;
  blackH = height*1/30;
  //
  tealX = width*1/12;
  tealY = height*1.5/16;
  tealW = width*1/40;
  tealH = height*1/30;
  //
  limeX = width*1.3/12;
  limeY = height*1.5/16;
  limeW = width*1/40;
  limeH = height*1/30;
  //
  greyX = width*2.2/12;
  greyY = height*1.13/12;
  greyW = width*1/40;
  greyH = height*1/30;
  //
  whiteX = width*2.5/12;
  whiteY = height*1.13/12;
  whiteW = width*1/40;
  whiteH = height*1/30;
  //
  quitButtonX = width*18.3/19;
  quitButtonY = height*0.1/300;
  quitButtonWidth = width*1/27;
  quitButtonHeight = height*1/27;
  //
  backgroundX = width*0.1/300;
  backgroundY = height*0.1/300;
  backgroundW = width*1;
  backgroundH = height*1;
  //
  resetX = width*5/12;
  resetY = height*0.7/16;
  resetW = width*1/30;
  resetH = height*1/30;
  //
  thick1X = width*3.85/12;
  thick1Y = height*0.7/16;
  thick1W = width*1/16;
  thick1H = height*1/120;
  //
  thick2X = width*3.85/12;
  thick2Y = height*1/16;
  thick2W = width*1/16;
  thick2H = height*1/60;
  //
  thick3X = width*3.85/12;
  thick3Y = height*1.5/16;
  thick3W = width*1/16;
  thick3H = height*1/30;
  //
  EraserX = width*5/12;
  EraserY = height*1.5/16;
  EraserW = width*1/30;
  EraserH = height*1/30;
  //
  WriteX = width*6/12;
  WriteY = height*0.5/12;
  WriteW = width*1/50;
  WriteH = height*1/10;
  //
  PenRectX = width*6.06/12;
  PenRectY = height*0.6/12;
  PenRectW = width*1/100;
  PenRectH = height*1/14;
  //
  PenTriX1 = width*6.127/12;
  PenTriY1 = height*1.6/12;
  PenTriX2 = width*6.175/12;
  PenTriY2 = height*1.47/12;
  PenTriX3 = width*6.07/12;
  PenTriY3 = PenTriY2;
  //
  blankX = width*1/12;
  blankY = height*2/12;
  blankW = width*6/8;
  blankH = height*6/8;
  //
  play1X = width*10/15;
  play1Y = height*0.5/15;
  play2X = play1X;
  play2Y = height*1/15;
  play3X = width*10.25/15;
  play3Y = height*0.75/15;
  //
  fastA1X = width*10.5/15;
  fastA1Y = play1Y;
  fastA2X = fastA1X;
  fastA2Y = play2Y;
  fastA3X = width*10.75/15;
  fastA3Y = play3Y;
  //
  fastB1X = width*10.7/15;
  fastB1Y = fastA1Y;
  fastB2X = fastB1X;
  fastB2Y = fastA2Y;
  fastB3X = width*10.95/15;
  fastB3Y = fastA3Y;
  //
  rewA1X = width*9.75/15;
  rewA1Y = fastA1Y;
  rewA2X = width*9.45/15;
  rewA2Y = fastA3Y;
  rewA3X = rewA1X;
  rewA3Y = fastA2Y;
  //
  rewB1X = width*9.55/15;
  rewB1Y = fastA1Y;
  rewB2X = width*9.25/15;
  rewB2Y = fastA3Y;
  rewB3X = rewB1X;
  rewB3Y = fastA2Y;
  //
  playCX = width*10.1/15;
  playCY = height*0.75/15;
  playCD = height*0.7/15;
  //
  stopX = width*9.95/15;
  stopY = height*1.2/15;
  stopW = width*0.3/15;
  stopH = height*0.5/15;
  //
  nextA1X = fastA1X;
  nextA1Y = height*1.2/15;
  nextA2X = nextA1X;
  nextA2Y = height*1.7/15;;
  nextA3X = fastA3X;;
  nextA3Y = height*1.45/15;
  //
  nextBX = nextA3X;
  nextBY = nextA1Y;
  nextBW = width*0.1/15;
  nextBH = height*0.5/15;
  //
  backA1X = rewA1X;
  backA1Y = nextA1Y;
  backA2X = rewA2X;
  backA2Y = nextA3Y;
  backA3X = rewA3X;
  backA3Y = nextA2Y;
  //
  backBX = width*9.4/15;
  backBY = backA1Y;
  backBW = nextBW;
  backBH = nextBH;
  //
  loopX = width*3.5/15;
  loopY = height*11/15;
  loopD = height*0.8/15;
  //
  fastrecX = fastA1X;
  fastrecY = fastA1Y;
  fastrecW = width*0.5/15;
  fastrecH = height*0.5/15;
  //
  playrecX = width*9.95/15;
  playrecY = height*0.5/15;
  playrecW = width*0.3/15;
  playrecH = height*0.5/15;
  //
  rewrecX = rewB2X;
  rewrecY = fastA1Y;
  rewrecW = width*0.5/15;
  rewrecH = height*0.5/15;
  //
  looprecX = width*3.3/15;
  looprecY = height*10.6/15;
  looprecW = width*0.8/15;
  looprecH = height*0.8/15;
  //
  nextrecX = fastA1X;
  nextrecY = nextA1Y;
  nextrecW = width*0.33/15;
  nextrecH = height*0.5/15;
  //
  backrecX = backBX;
  backrecY = backBY;
  backrecW = width*0.33/15;
  backrecH = height*0.5/15;
  //
  circX = width*11.5/15;
  circY = height*0.5/15;
  circD = height*0.8/15;
}

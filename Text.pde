String buttonText = "X";
String buttonText2 = "Reset";
String buttonText3 = "Eraser";
String buttonText4 = "Line Art";
PFont font;

void textSetup() { 
  font = createFont ("Arial", 55);
}

void textDraw() { 
  fill(black); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 20);
  text(buttonText, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(255);
}

void textDraw2() {
  fill(black);
  textAlign (CENTER, CENTER);
  text(buttonText2, resetX, resetY, resetW, resetH);
  fill(255);
}

void textDraw3() {
  fill(white);
  textAlign (CENTER, CENTER);
  text(buttonText3, EraserX, EraserY, EraserW, EraserH);
  fill(255);
}

void textDraw4() {
  fill(white);
  textAlign (CENTER, CENTER);
  text(buttonText4, laX, laY, laW, laH);
  fill(255);
}

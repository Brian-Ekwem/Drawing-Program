String buttonText = "X";
String buttonText2 = "Reset";
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

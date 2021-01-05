String buttonText = "X";
PFont font;

void textSetup() { 
  font = createFont ("Arial", 55);
}

void textDraw() { 
  fill(black); 
  textAlign (CENTER, CENTER); 
  //textFont(font, 20);
  text(buttonText, quitButtonX, quitButtonY, quitButtonW, quitButtonH);
  fill(255);
}

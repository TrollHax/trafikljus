void renderButton(boolean pressed) {
  int borderSize = 100;
  int buttonsize = 80;
  float borderXPos = width/2 - 50;
  float borderYPos = height/2 + 100;
  float buttonXPos = width/2;
  float buttonYPos = height/2 + 150;

  fill(0);
  rect(borderXPos, borderYPos, borderSize, borderSize);
  ellipseMode(CENTER);
  fill(0, 0, 255);
  ellipse(buttonXPos, buttonYPos, buttonsize, buttonsize);

  if (pressed) {
    time = frameCount;
    state = "YellowLight";
  }
}

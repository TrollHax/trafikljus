void renderTrafficLight(boolean redOn, boolean yellowOn, boolean greenOn) {
  fill(black);
  rect(100, 100, 100, 300);
  imageMode(CENTER);

  if (redOn) {
    image(redCircle, 150, 150);
  } else {
    fill(redOff);
    ellipse(150, 150, 75, 75);
  }

  if (yellowOn) {
    image(yellowCircle, 150, 250);
  } else {
    fill(yellowOff);
    ellipse(150, 250, 75, 75);
  }

  if (greenOn) {
    image(greenCircle, 150, 350);
  } else {
    fill(greenOff);
    ellipse(150, 350, 75, 75);
  }
}

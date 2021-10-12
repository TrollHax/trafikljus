void renderTrafficLight(boolean redOn, boolean yellowOn, boolean greenOn) {
  fill(black);
  rect(100, 100, 100, 300);
  
  if (redOn){
    fill(redLight);
  } else{
    fill(redOff);
  }
  ellipse(150, 150, 75, 75);

  if (yellowOn){
    fill(yellowLight);
  } else{
    fill(yellowOff);
  }
  ellipse(150, 250, 75, 75);

  if (greenOn){
    fill(greenLight);
  } else{
    fill(greenOff);
  }
  ellipse(150, 350, 75, 75);
}

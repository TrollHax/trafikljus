color black = color(0);
color redLight = color(255, 0, 0);
color yellowLight = color(255, 255, 0);
color greenLight = color(0, 255, 0);
color redOff = color(100, 0, 0);
color yellowOff = color(100, 100, 0);
color yellowClear = color(255);
color greenOff = color(0, 100, 0);

int time;

String state;

PImage redCircle, yellowCircle, greenCircle, redWalkMan, greenWalkMan;

void setup() {
  size(600, 700);
  background(180);
  state = "GreenLight";
  time = frameCount;

  redCircle = loadImage("Images/redCircle.png");
  yellowCircle = loadImage("Images/yellowCircle.png");
  greenCircle = loadImage("Images/greenCircle.png");
  redWalkMan = loadImage("Images/redWalkMan.png");
  greenWalkMan= loadImage("Images/greenWalkMan.png");
  redCircle.resize(90, 0);
  yellowCircle.resize(150, 0);
  greenCircle.resize(140, 0);
  redWalkMan.resize(75, 0);
  greenWalkMan.resize(40, 0);
}


void draw() {
  println(time);
  renderButton(false);
  if (state == "GreenLight") {
    renderTrafficLight(false, false, true);
    renderWalkSignal(false);
  }
  if (mousePressed && sqrt(sq(mouseX - width/2) + sq(mouseY - (height/2 + 150))) < 40) {
    renderButton(true);
  }
  if (state == "YellowLight") {
    renderTrafficLight(false, true, false);
    renderWalkSignal(false);
    if (frameCount - time > 60*1) {
      time = frameCount;
      state = "RedLight";
    }
  } else if (state == "RedLight") {
    renderTrafficLight(true, false, false);
    renderWalkSignal(true);
    if (frameCount - time > 60*5) {
      time = frameCount;
      state = "RedYLight";
    }
  } else if (state == "RedYLight") {
    renderTrafficLight(true, true, false);
    renderWalkSignal(false);
    if (frameCount - time > 60*1) {
      time = frameCount;
      state = "GreenLight";
    }
  }
}

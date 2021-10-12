color black = color(0);
color redLight = color(255, 0, 0);
color yellowLight = color(255, 255, 0);
color greenLight = color(0, 255, 0);
color redOff = color(100, 0, 0);
color yellowOff = color(100, 100, 0);
color greenOff = color(0, 100, 0);

int time;

String state;

void setup() {
  size(300, 700);
  background(180);
  state = "RedLight";
  time = frameCount;
}


void draw() {
  if (state == "RedLight") {
    renderTrafficLight(true, false, false);
    if (frameCount - time > 60*4 ) {
      time = frameCount;
      state = "RedYLight";
    }
  }
  if (state == "RedYLight") {
    renderTrafficLight(true, true, false);
    if (frameCount - time > 60*1) {
      time = frameCount;
      state = "GreenLight";
    }
  }
  if (state == "GreenLight") {
    renderTrafficLight(false, false, true);
    if (frameCount - time > 60*4) {
      time = frameCount;
      state = "YellowLight";
    }
  }
  if (state == "YellowLight") {
    renderTrafficLight(false, true, false);
    if (frameCount - time > 60*1) {
      time = frameCount;
      state = "RedLight";
    }
  }
}

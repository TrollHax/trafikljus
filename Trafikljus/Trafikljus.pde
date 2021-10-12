color black = color(0);
color redLight = color(255, 0, 0);
color yellowLight = color(255, 255, 0);
color greenLight = color(0, 255, 0);
color redOff = color(100, 0, 0);
color yellowOff = color(100, 100, 0);
color greenOff = color(0, 100, 0);

int start;


void setup() {
  size(300, 700);
  background(180);
  start = millis();
}


void draw() {
  if (millis() - start < 4000) {
    renderTrafficLight(true, false, false);
  } else if (millis() - start < 5000) {
    renderTrafficLight(true, true, false);
  } else if (millis() - start < 9000) {
    renderTrafficLight(false, false, true);
  } else if (millis() - start < 10000) {
    renderTrafficLight(false, true, false);
  } else {
    start = millis();
  }
}

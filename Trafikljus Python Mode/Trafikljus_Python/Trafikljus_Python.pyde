from renderTrafficLight import renderTrafficLight

start = millis()

def setup():
    size(300, 700)
    background(180)
    
def draw():
    global start
    if (millis() - start < 4000):
        renderTrafficLight(True, False, False)
    elif (millis() - start < 5000):
        renderTrafficLight(True, True, False)
    elif (millis() - start < 9000):
        renderTrafficLight(False, False, True)
    elif (millis() - start < 10000):
        renderTrafficLight(False, True, False)
    else:
        start = millis()

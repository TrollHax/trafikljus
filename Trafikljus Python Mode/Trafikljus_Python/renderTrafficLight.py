black = color(0)
redLight = color(255, 0, 0)
yellowLight = color(255, 255, 0)
greenLight = color(0, 255, 0)
redOff = color(100, 0, 0)
yellowOff = color(100, 100, 0)
greenOff = color(0, 100, 0)

def renderTrafficLight(redOn, yellowOn, greenOn):
    fill(black)
    rect(100, 100, 100, 300)
  
    if (redOn):
        fill(redLight)
    else:
        fill(redOff)
  
    ellipse(150, 150, 75, 75)

    if (yellowOn):
        fill(yellowLight)
    else:
        fill(yellowOff)

    ellipse(150, 250, 75, 75)

    if (greenOn):
        fill(greenLight)
    else:
        fill(greenOff)

    ellipse(150, 350, 75, 75)

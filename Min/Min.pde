//inspired by this sketch: http://www.openprocessing.org/sketch/94476

void setup()
{
  size(400, 400);
  background(255);
}

void draw()
{
  float rotateSecond=map(minute(), 0, 60, 0, TWO_PI);
  float changeColor1=map(mouseY, 0, height, 0, 255);
  float changeColor2=map(mouseY, 0, height, 255, 0);

  int i=1;
  if (i < 800) {
    i+=5;
  }

  if (i > 800) {
    i=1;
  }
  pushMatrix();
  stroke(changeColor1);
  translate(mouseX, mouseY);
  rotate(rotateSecond);
  line(0, 0, i, 800-i);
  line(0, 0, 800-i, 800);
  line(0, 0, 800-i, i);

  translate(width/4, height/4);
  stroke(changeColor2);
  rotate(rotateSecond);
  line(0, 0, i, 800-i);
  line(0, 0, 800-i, 800);
  line(0, 0, 800-i, i);

  popMatrix();
}

void mouseReleased()
{
  noStroke();
  fill(255);
  rect(0, 0, width, height);
}


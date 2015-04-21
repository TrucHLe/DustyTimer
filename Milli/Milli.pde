void setup()
{
  size(400, 400);
  background(255);
  frameRate(1000);
}

void draw()
{ 
  float millisMath=millis()%1000;
  float color1=map(millisMath, 0, 1000, 0, 255);
  float color2=map(millisMath, 0, 1000, 255, 0);
  float x1=random(width);
  float y1=random(height);

  if (second()%2==0)
  {
    stroke(color1);
  }
  else
  {
    stroke(color2);
  }
  line(x1, y1, x1+random(5), y1+random(5));
}

void mouseReleased()
{
  pushStyle();
  noStroke();
  fill(255);
  rect(0, 0, width, height);
  popStyle();
}


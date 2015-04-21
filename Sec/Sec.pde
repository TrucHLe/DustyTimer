float[] xPos = new float[60];
float[] yPosE = new float[60];
float[] ySpeed = new float[60];
float[] strokeWeight = new float[60];

int pos;
int lineCount;
int lastLineDrawnTime;

void setup()
{
  size(400, 400);
  background(255);

  for (int pos=0; pos<60; pos++)
  {
    xPos[pos]=int(random(10, width-10));
    yPosE[pos]=0;
    ySpeed[pos]=random(0.01, 0.1);
    strokeWeight[pos]=random(3);
  }

  pos=0;
  lineCount=0;
  lastLineDrawnTime=millis();
}

void draw()
{
  background(255);

  if (lineCount==60)
  {
    lineCount=0;
    for (int pos=0; pos<60; pos++)
    {
      yPosE[pos]=0;
    }
  }

  pos=0;
  if (lineCount<60)
  {
    if (millis()-lastLineDrawnTime>1000)
    {
      lastLineDrawnTime=millis();
      lineCount++;
    }

    while (pos<lineCount)
    {
      yPosE[pos]+=ySpeed[pos];
      strokeWeight(strokeWeight[pos]);
      line(xPos[pos], 0, xPos[pos], yPosE[pos]);
      pos++;
    }
  }
}


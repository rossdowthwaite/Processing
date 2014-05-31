int xPos = 0;
float noisePos = 0;

void setup()
{
    size(400, 400);
    background(255);
}

void draw()
{
    line(xPos, noise(noisePos) *height, xPos, height);
    xPos++;
    noisePos += 0.01;
}

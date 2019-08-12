import processing.video.*;

Capture video;

PImage picture;

void setup()
{
  //fullScreen();
  picture = loadImage("TestPicture.jpg");
  size(650, 400);
  surface.setResizable(true);
  
  video = new Capture(this, 640, 480, 30);
  video.start();
  
  background(0);
}


void draw()
{
  video.read();
  picture.resize(650, 0);
  for (int i = 0; i < 2000*2 ; i++)
   {
    float x = random(width);
    float y = random(height);
    color c = video.get(int(x), int(y));
    fill(c, 25); //random(x)%20+20);
    noStroke();
    ellipse(x, y, random(x)%30, random(y)%30 );
   }
}

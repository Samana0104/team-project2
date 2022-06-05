PImage phase5Img;

void setupPhase5()
{
  phase5Img = loadImage("phase5.png");
  phase5Img.loadPixels();
  // Only need to load the pixels[] array once, because we're only
  // manipulating pixels[] inside draw(), not drawing shapes.
  loadPixels();
}


void drawPhase5()
{
  pushStyle();

  viewFlashEffect();
  popStyle();
}

void viewFlashEffect()
{
  int loc;
  float r,g,b;
  float maxdist;
  float d;
  float adjustbrightness;
  color c;
  
  for (int x = 0; x < phase5Img.width; x++) {
    for (int y = 0; y < phase5Img.height; y++ ) {
      // Calculate the 1D location from a 2D grid
      loc = x + y*phase5Img.width;
      r = red (phase5Img.pixels[loc]);
      g = green (phase5Img.pixels[loc]);
      b = blue (phase5Img.pixels[loc]);
      maxdist = 5;//dist(0,0,width,height);
      d = dist(x, y, mouseX, mouseY);
      adjustbrightness = 10*(maxdist-d)/maxdist;
      r += adjustbrightness;
      g += adjustbrightness;
      b += adjustbrightness;
      // Constrain RGB to make sure they are within 0-255 color range
      r = constrain(r, 0, 255);
      g = constrain(g, 0, 255);
      b = constrain(b, 0, 255);
      // Make a new color and set pixel in the window
      c = color(r, g, b);
      pixels[y*width + x] = c;
    }
  }
  updatePixels();
}

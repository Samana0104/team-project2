boolean phase1 = true;
boolean phase2 = false;
boolean phase3 = false;
boolean phase4 = false;
boolean phase5 = false;
boolean phase6 = false;
boolean phase7 = true;

void setup()
{
  size(1280, 720);
  background(255);
  
  setupPhase7();
}

void draw()
{
  if(phase7) // "phase7 -> phase6 -> phase5" 
  {
    drawPhase7();
  }
  else if(phase6)
  {
  }
  else if(phase5)
  {
  }
  else if(phase4)
  {
  }
  else if(phase3)
  {
  }
  else if(phase2)
  {
  }
  else if(phase1)
  {
  }
}

boolean rectangleButton(int x, int y, int w, int h) // x = buttonX, y = buttonY, w = buttonWidth, h = buttonHeight, return = button state on Clicking 
{
  fill(255, 23, 23);
  rect(x, y, w, h);  
  
  if((mouseX >= x && mouseX <= x+w) && (mouseY >= y && mouseY <= y+h)) // if you want to revise button design, you just revise the fill function
  {
     fill(76, 225, 250);
     rect(x, y, w, h);
     
     if(mousePressed && mouseButton == LEFT) // when pressed mouse button
       return true;
  }
  
  return false;
}

boolean circleButton(int x, int y, int r) // x = buttonX, y = buttonY, r = button radius , return = button state on Clicking 
{
  fill(255, 23, 23);
  ellipse(x, y, r*2, r*2);  
  
  if(sqrt(pow(abs(mouseX-x), 2)+pow(abs(mouseY-y), 2)) <= r) // if you want to revise button design, you just revise the fill function
  {
     fill(76, 225, 250);
     ellipse(x, y, r*2, r*2);
     
     if(mousePressed && mouseButton == LEFT) // when pressed mouse button
       return true;
  }
  
  return false;
}

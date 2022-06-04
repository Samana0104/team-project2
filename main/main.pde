boolean phase1 = false;
boolean phase2 = false;
boolean phase3 = false;
boolean phase4 = false;
boolean phase5 = false;
boolean phase6 = false;
boolean phase7 = true;

PFont subtitleFont;

void setup()
{
  size(1280, 720);
  background(255);
  subtitleFont = createFont("JejuMyeongjo.ttf", 30);
  
  setupPhase1();
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
    drawPhase4();
  }
  else if(phase3)
  {
  }
  else if(phase2)
  {
  }
  else if(phase1)
  {
    drawPhase1();
  }
}

void mousePressed()
{
  if(phase7) // "phase7 -> phase6 -> phase5" 
  {
    checkAllBlocksInRange(); // 마우스가 페이즈7 블록 범위 안에 있는지 확인한다.
    checkAllButtonsInRange(); // 마우스가 페이즈7 버튼 범위 안에 있는지 확인한다.
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

void createSubtitle(String subtitleText) // 자막 제작 함수 
{
  pushStyle();
  strokeWeight(3);
  fill(230, 240);
  rect(50, 500, 1180, 200);
  
  fill(0, 0, 0);
  noStroke();
  textFont(subtitleFont);
  textAlign(LEFT, TOP);
  textLeading(40);
  text(subtitleText, 70, 520);
  popStyle();   
}

// 버튼 두개이상 경우 써야하는 참조만 하시고 안 쓰시는 걸 추천합니다.
boolean rectangleButton(int x, int y, int w, int h) 
{
  fill(255, 23, 23);
  rect(x, y, w, h);  
  
  if((mouseX >= x && mouseX <= x+w) && (mouseY >= y && mouseY <= y+h)) // 디자인 수정을 원하시면 fill만 수정하시면 됩니다.
  {
     fill(76, 225, 250);
     rect(x, y, w, h);
     
     if(mousePressed && mouseButton == LEFT) //버튼을 눌렀을 때
       return true;
  }
  
  return false;
}

// 버튼 두개이상 경우 써야하는 참조만 하시고 안 쓰시는 걸 추천합니다.
boolean circleButton(int x, int y, int r) // x = buttonX, y = buttonY, r = button radius , return = button state on Clicking 
{
  fill(255, 23, 23);
  ellipse(x, y, r*2, r*2);  
  
  if(sqrt(pow(abs(mouseX-x), 2)+pow(abs(mouseY-y), 2)) <= r) // 디자인 수정을 원하시면 fill만 수정하시면 됩니다.
  {
     fill(76, 225, 250);
     ellipse(x, y, r*2, r*2);
     
     if(mousePressed && mouseButton == LEFT) //버튼을 눌렀을 때
       return true;
  }
  
  return false;
}

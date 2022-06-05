boolean phase1 = true; // 메인 
boolean phase2 = false; // 미술관 입구
boolean phase3 = false; // 미술관 내부 작품 관람
boolean phase4 = false; // 정전 효과 발생 장면
boolean phase5 = false; // 휴대폰 찾는 장면
boolean phase6 = false;
boolean phase7 = false;

PFont subtitleFont; // 자막 폰트

float fadingHeight = 0; // 페이드 효과를 주기 위한 변수 

void setup()
{
  size(1280, 720);
  background(255);
  subtitleFont = createFont("JejuMyeongjo.ttf", 30);
  
  setupPhase1(); 
  setupPhase2();
  setupPhase3();
  setupPhase4();
  setupPhase5();
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
    drawPhase5();
  }
  else if(phase4)
  {
    drawPhase4();
  }
  else if(phase3)
  {
    drawPhase3();
  }
  else if(phase2)
  {
    drawPhase2();
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
    checkAllPhase7BlocksInRange(); // 마우스가 페이즈7 블록 범위 안에 있는지 확인한다.
    checkAllPhase7ButtonsInRange(); // 마우스가 페이즈7 버튼 범위 안에 있는지 확인한다.
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
    changePhase3Subtitle();
  }
  else if(phase2)
  {
    changePhase2Subtitle();
  }
  else if(phase1)
  {
    checkAllPhase1ButtonsInRange(); // 마우스가 페이즈1 버튼 범위 안에 있는지 확인한다.
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

boolean viewFadingOutEffect() // 전환 효과 시작부 / 효과 주는게 끝나면 true 반환 그게 아니면 false 반환
{
  pushStyle();
  fill(0);
  rect(0, 0, width, fadingHeight); // 왜 FadingOut은 밑에 FadingIn처럼 왼쪽 문장이 if 조건문 안에 안들어갔나면 
  popStyle();                      // 왼쪽 문장을 if안에 넣으면 조건이 true에 들어갈 때 중간에 작동하고 있는 phase 장면이 
                                   // 한 번 그려져서 자연스러운 느낌이 안들어옴
    
  if(fadingHeight > height + 100)
  {
    return true;
  }
  else
  {
    fadingHeight += 9.0;
    return false;
  } 
}

boolean viewFadingInEffect() // 전환 효과 후반부 / 효과 주는게 끝나면 true 반환 그게 아니면 false 반환
{
  if(fadingHeight < 0)
  {
    return true;
  }
  else
  {
    pushStyle();
    fill(0);
    rect(0, 0, width, fadingHeight);
    popStyle();
  
    fadingHeight -= 9.0;
    return false;
  }
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

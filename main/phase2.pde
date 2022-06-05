String phase2Subtitle;

int presentPhase2Subtitle = 0;
float museumScaleSize = 1.0;
float museumLocation = 1.0;

boolean isPhase2Ending = false;

void setupPhase2()
{
  phase2Subtitle = "디콘창에서 만난 승연, 한빛, 수빈은 코딩 프로젝트를 하게 되는데...";
}

void drawPhase2()
{
  drawMainBackground(); // phase1의 백그라운드를 그대로 그린다.
  drawSungYeonCharacter(); // 승연 캐릭터를 그린다.
  drawHanbitCharacter(); // 한빛 캐릭터를 그린다.
  drawSubinCharacter(); // 수빈 캐릭터를 그린다.
  
  if(isPhase2Ending) // 만약 자막을 다 봐서 페이즈 2 엔딩이 났다면
  {
    if(isEnteringToMuseum()) // 미술관에 들어가는 장면을 그리며 미술관에 들어갔으면 페이즈 3으로 넘어간다.
      phase3 = true; 
  }
  else // 자막을 다 보지 않았다면
  {
    createSubtitle(phase2Subtitle); // 자막을 표시한다.    
  }
  viewFadingInEffect(); // phase1의 후반부 fade out 효과를 받아 fade in 효과를 그려낸다.
}

void changePhase2Subtitle()
{
  presentPhase2Subtitle += 1;
  
  if(presentPhase2Subtitle == 1)
    phase2Subtitle = "주제는 미디어 아트";
  else if(presentPhase2Subtitle == 2)
    phase2Subtitle = "그들은 창작과제를 위해 몬드리안 작품 전시관에 가게 되는데..";
  else if(presentPhase2Subtitle == 3)
    isPhase2Ending = true;
}

boolean isEnteringToMuseum()
{
  pushMatrix();
  
  museumLocation += 1;
  translate(museumLocation * -10.6, museumLocation * -3.5);
  museumScaleSize += 0.01;
  scale(museumScaleSize);
  drawMainBackground();
  
  popMatrix();
  
  if(museumScaleSize > 2.9)
    return true;
  
  return false;
}

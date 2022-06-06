String phase6Subtitle;

int presentPhase6Subtitle = 0;

boolean isPhase6Ending = false;

void setupPhase6()
{
  phase6Subtitle = "우여곡절 끝에 승연, 한빛, 수빈은 집에 돌아갔고";
}

void drawPhase6()
{
  pushStyle();
  background(0);
  createPhase6Subtitle(phase6Subtitle);
  
  if(isPhase6Ending)
    phase7 = true;
    
  popStyle();
}

void createPhase6Subtitle(String subtitleText) // 자막 제작 함수 
{
  pushStyle();
  
  textAlign(CENTER, CENTER);
  
  fill(255);
  noStroke();
  textFont(subtitleFont);
  textSize(40);
  text(subtitleText, width/2, height/2);
  popStyle();   
}

void changePhase6Subtitle()
{
  presentPhase6Subtitle += 1;
  
  if(presentPhase6Subtitle == 1)
    phase6Subtitle = "미술관에서 본 몬드리안 작품들을 기반으로\n프로젝트를 만들기 시작했다.";
  else if(presentPhase6Subtitle == 2)
    isPhase6Ending = true;
}

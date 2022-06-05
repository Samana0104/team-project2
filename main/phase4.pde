
boolean isBlackout = true;
boolean isTurningSwitch = true;

float timingForBlackout = 1;

void setupPhase4()
{

}


void drawPhase4()
{
  pushStyle();
  
  background(200);
  
  drawModrianPiece1(); // phase3의 작품1을 그대로 그린다.
  drawModrianPiece2(); // phase3의 작품2를 그대로 그린다.
  drawModrianPiece3(); //phase3의 작품3을 그대로 그린다.
  
  if(isBlackout) // 정전중이라면 
    viewBlackoutEffect(); // 정전 효과를 보여준다.
   else // 정전 효과가 끝나면 phase5로 넘어간다.
    phase5 = true; 
    
  popStyle();
}

void viewBlackoutEffect()
{
  frameRate(timingForBlackout);
  
  timingForBlackout += 0.5;
  
  if(isTurningSwitch)
  {
    background(0);
    isTurningSwitch = false;
  }
  else
  {
    isTurningSwitch = true;
  }
  
 if(timingForBlackout >= 20)
 {
   isBlackout = false;
   frameRate(30); // 기본 프레임 레이트 60
 }
}

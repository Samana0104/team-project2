String phase3Subtitle;

int presentPhase3Subtitle = 0;

boolean isPhase3Ending = false;

void setupPhase3()
{
  phase3Subtitle = "몬드리안의 매력에 빠진 그들";
}


void drawPhase3()
{
  pushStyle();
  
  background(200);
  
  drawModrianPiece1(); // 작품1을 그린다.
  drawModrianPiece2(); // 작품2를 그린다.
  drawModrianPiece3(); // 작품3을 그린다.

  viewParticularModrianPieceUnderMouse(); // 마우스 커서 위치에 따라 작품을 표시한다
  
  if(isPhase3Ending) // 만약 자막을 다 봐서 페이즈3이 엔딩이 났다면 페이즈 4로 넘어간다
  {
    phase4 = true; 
  }
  else // 자막을 다 보지 않았다면
  {
    createSubtitle(phase3Subtitle); // 자막을 표시한다.  
  }
  
  
  popStyle();
}

void drawModrianPiece1()
{
  pushStyle();
  
  fill(255);
  strokeWeight(0);
  rect(25, 50, 365, 500);
  
  strokeWeight(10);
  line(25, 380, 385, 380);
  line(25, 150, 150, 150);
  line(150, 50, 150, 550);
  line(300, 380, 300, 550);
  line(300, 450, 385, 450);

  fill(#FF0000);
  strokeWeight(0);
  rect(155, 50, 235, 325);
  fill(#0024FF);
  rect(25, 385, 122, 165);
  fill(#FEFF00);
  rect(306, 456, 85, 93);
  
  popStyle();
}

void drawModrianPiece2()
{
  pushStyle();
  
  fill(255);
  
  strokeWeight(0);
  fill(#F0E9E3);
  rect(445, 50, 370, 500);
  
  strokeWeight(5);
  line(445, 225, 815 , 225);
  line(445, 250, 815 , 250);
  line(445, 310, 815 , 310);
  line(610, 50, 610, 550);
  line(625, 50, 625, 550);
  line(730, 310, 730, 550);
  line(625, 500 ,730, 500); 
  fill(#C1C1B7);
  
  strokeWeight(0);
  rect(444, 50, 163, 172);
  rect(733, 313, 82 , 239);
  fill(#FF661A);
  rect(628, 503, 100, 47);
  
  popStyle();
}

void drawModrianPiece3()
{
  pushStyle();
  
  fill(255);
  
  strokeWeight(0);
  fill(255);
  rect(870, 50, 380, 500);
  
  strokeWeight(5);
  line(870, 150, 1250, 150);
  line(970, 50, 970, 550);
  line(870, 200, 970, 200);
  line(970 , 500, 1250, 500);
  fill(#FF0000);
  
  strokeWeight(0);
  rect(870, 50 , 99 , 98);
  rect(870, 153, 99, 45);

  fill(#0041FF);
  rect(973, 503, 280, 50);
  
  popStyle();
}


void viewParticularModrianPieceUnderMouse()
{
  pushStyle();
  fill(0); 
  
  if (mouseX> 0&& mouseX< width/3) 
  { 
    rect(width/3,0,(2* width)/3,720);
  }
  else if(mouseX> width/3 && mouseX< (2* width)/3)
  {
    rect(0,0, width/3,720);
    rect((2* width)/3,0, width/3,720);
  }
  else if(mouseX> (2* width)/3 && mouseX<width)
  {
    rect(0,0, (2* width)/3,720);
  }
  else
  {
    rect(0,0, width, 720);
  }
  
  popStyle();
}

void changePhase3Subtitle()
{
  presentPhase3Subtitle += 1;
  
  if(presentPhase3Subtitle == 1)
    phase3Subtitle = "한빛 :  여기에 작품이 엄청 많은데, 뭐부터 보는게 좋을까?";
  else if(presentPhase3Subtitle == 2)
    phase3Subtitle = "와 이 작품은 강렬한 빨간색이 눈에 확 들어오는데?";
  else if(presentPhase3Subtitle == 3)
    phase3Subtitle = "승연: 이 작품은 색채가 강렬하네.";
  else if(presentPhase3Subtitle == 4)
    phase3Subtitle = "수빈: 선과 사각형만으로도 이렇게 표현할 수 있다는게 신기해.";
  else if(presentPhase3Subtitle == 5)
    phase3Subtitle = "한빛: 그러게, 첫번째 작품과 비슷한 작품인데 느낌이 다르다.";
  else if(presentPhase3Subtitle == 6)
    phase3Subtitle = "승연: 다른 작품들도 보러 가보자!";
  else if(presentPhase3Subtitle == 7)
    isPhase3Ending = true;
}

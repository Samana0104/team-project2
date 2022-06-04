

void drawPhase4()
{
  pushStyle();
  background(255);
  
  drawModrianPiece1(); // 작품1을 그린다.
  drawModrianPiece2(); // 작품2를 그린다.
  drawModrianPiece3(); // 작품3을 그린다.

  viewParticularModrianPieceUnderMouse(); // 마우스 커서 위치에 따라 작품을 표시한다
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
  else 
  if(mouseX> width/3 && mouseX< (2* width)/3)
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

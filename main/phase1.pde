float[] titleTextPoint = new float[2]; // x, y

boolean isDrawingTitle = true;
boolean isGameStart = false;

PFont titleFont; // 우당탕탕 팀플 스토리
PFont titleFont2; // - 미술관 ver -
PFont gameStartButtonFont; // 게임 시작 폰트

float[] phase1Button = new float[4]; // x Pos, y Pos, width, height

void setupPhase1()
{
  initPhase1Font();
  initTitleTextPoint();
  createPhase1Button();
}

void drawPhase1()
{
  drawMainBackground(); // 백그라운드를 그린다.
  drawSungYeonCharacter(); // 승연 캐릭터를 그린다.
  drawHanbitCharacter(); // 한빛 캐릭터를 그린다.
  drawSubinCharacter(); // 수빈 캐릭터를 그린다.
  drawMainTitle(); // 메인 타이틀을 그린다.
  drawPhase1Button(); // 게임 스타트 버튼을 그린다.
  
  if(isGameStart) // 만약 게임 스타트가 시작했다면
  {
    if(viewFadingOutEffect()) // fade out 효과를 주고 fade out 효과가 끝나면 다음 페이즈로 넘어감
      phase2 = true;
  }
}

void initPhase1Font()
{
  titleFont = createFont("LeeSeoyun.ttf", 80);
  titleFont2 = createFont("Batang.ttf", 35);
  gameStartButtonFont = createFont("JejuHallasan.ttf", 40);  
}

void initTitleTextPoint()
{
  titleTextPoint[0] = 0.0;
  titleTextPoint[1] = 150.0;
}

void createPhase1Button()
{
  phase1Button[0] = 1000;
  phase1Button[1] = 600;
  phase1Button[2] = 250;
  phase1Button[3] = 100;  
}

void drawMainBackground()
{
  drawBackgroundGround(); // 배경을 그린다.
  drawBackgroundSun(); // 해를 그린다.
  drawBackgroundMuseum(); // 미술관관을 그린다.
  drawBackgroundRoad(); // 길을 그린다.
}

void drawBackgroundGround()
{
  pushStyle();
  
  background(#C4E6F0);
  //ground
  fill(#80CB79);
  noStroke();
  arc(560,1800,4700,3000,0,TWO_PI);  
  
  popStyle();
}

void drawBackgroundSun()
{
  pushStyle();
  
  //sun
  fill(#F79E0C);
  stroke(#FC9C00);
  strokeWeight(2);
  arc(0,0,250,250,0,HALF_PI);
  
  popStyle();
}

void drawBackgroundMuseum()
{
  pushStyle();
  
  //art museum (roof)
  fill(#DED8CE);
  stroke(#C6C0B6);
  strokeWeight(2);
  triangle(960,0,640,100,1280,100);
  
  //art museum (roof)_width
  fill(#DED8CE);
  stroke(#C6C0B6);
  strokeWeight(2);
  quad(650,100,670,120,1250,120,1270,100);
  
  //art museum (wall)
  fill(#DED8CE);
  stroke(#C6C0B6);
  strokeWeight(2);
  rect(700,120,500,320);
  
  line(710,420,1210,420);
  
  //art museum (column)
  fill(#DED8CE);
  stroke(#C6C0B6);
  strokeWeight(2);
  rect(670,120,50,300);
  
  fill(#DED8CE);
  stroke(#C6C0B6);
  strokeWeight(2);
  quad(670,420,660,440,730,440,720,420);
  
  fill(#DED8CE);
  stroke(#C6C0B6);
  strokeWeight(2);
  rect(1200,120,50,300);
  
  fill(#DED8CE);
  stroke(#C6C0B6);
  strokeWeight(2);
  quad(1200,420,1190,440,1260,440,1250,420);
  
  //art museum (door)
  stroke(#C6C0B6);
  strokeWeight(2);
  rect(900,270,120,150);
  
  fill(#B4AB9D);
  noStroke();
  ellipse(1010,355,5,5);
  
  //art museum (stair)
  fill(#DED8CE);
  stroke(#C6C0B6);
  strokeWeight(2);
  rect(750,420,420,6);
  
  fill(#DED8CE);
  stroke(#C6C0B6);
  strokeWeight(2);
  rect(735,426,450,6);
  
  fill(#DED8CE);
  stroke(#C6C0B6);
  strokeWeight(2);
  rect(720,432,480,8);
  
  //art museum (windows) ..36..WIDTH 80
  fill(#EBF6FA);
  noStroke();
  
  for (int x=752; x<1200; x+=112)
    rect(x,190,80,50);

  fill(#EBF6FA);
  noStroke();

  for (int x=792; x<1200; x+=112)
    arc(x,190,80,80,0,TWO_PI);


  stroke(#C6C0B6);

  for (int x=752; x<1200; x+=112)
    line(x,200,x+80,200);

  stroke(#C6C0B6);

  for (int x=792; x<1200; x+=112)
  line(x,150,x,240);

  //art museum line
  stroke(#C6C0B6);

  for (int x=670; x<720; x+=10)
    line(x,120,x,420);


  stroke(#C6C0B6);

  for (int x=1200; x<1250; x+=10)
    line(x,120,x,420); 
    
  popStyle();
}

void drawBackgroundRoad()
{
  pushStyle();
  
 //road
  fill(#A0867B);
  noStroke();
  quad(810,440,710,720,1210,720,1110,440); 
  
  popStyle();
}

void drawSungYeonCharacter()
{
  pushStyle();
  
  // 승연 옷
  fill(#F5ED00);
  noStroke();
  //arc(320,400,250,250,0,HALF_PI); -> ERROR?? WHY?
  ellipse(115,650,200,350);

  // 승연 머리
  fill(#624C41);
  noStroke();
  ellipse(120,400,170,180);

  beginShape();
  vertex(35,400);
  vertex(35,590);
  vertex(45,570);
  vertex(55,590);
  vertex(65,570);
  vertex(75,590);
  vertex(85,570);
  vertex(95,590);
  vertex(105,570);
  vertex(115,590);
  vertex(125,570);
  vertex(135,590);
  vertex(145,570);
  vertex(155,590);
  vertex(165,570);
  vertex(175,590);
  vertex(185,570);
  vertex(195,590);
  vertex(205,400);
  endShape(CLOSE);
  
  popStyle();
}

void drawSubinCharacter()
{
  pushStyle();
  
  // 수빈 옷
  fill(#E5A0E4);
  noStroke();
  ellipse(580,650,200,350);  
  
  // 수빈 머리
  fill(#F6F7B6);
  noStroke();
  ellipse(585,400,170,180);

  fill(#9D62FF);
  noStroke();
  ellipse(585,400,50,50);
  
  fill(#F6F7B6);
  stroke(#E7E852);
  strokeWeight(2);
  ellipse(585,460,30,150);  
  
  popStyle();
}

void drawHanbitCharacter()
{
  pushStyle();
  
  // 한빛 옷
  fill(#1B0089);
  noStroke();
  //arc(320,400,250,250,0,HALF_PI); -> ERROR?? WHY?
  ellipse(350,650,200,350);
  
  // 한빛 머리
  fill(#504F41);
  noStroke();
  ellipse(350,400,170,180);
  rect(265,310,170,80);
  
  popStyle();
}

void drawMainTitle()
{  
  pushStyle();
  
  //title
  textFont(titleFont);
  
  fill(0);
  text("우당탕탕", titleTextPoint[0], titleTextPoint[1]);
 
  fill(255, 0, 0);
  text("팀플", titleTextPoint[0] + 30, titleTextPoint[1] + 80);
  
  fill(0);
  text("스토리", titleTextPoint[0] + 150, titleTextPoint[1] + 80);
  
  textFont(titleFont2);
  fill(100);
  text("- 미술관 ver -", titleTextPoint[0] + 30, titleTextPoint[1] + 130);
  
  moveTitle();
  
  popStyle();
}

void drawPhase1Button()
{
  pushStyle();
  
  changeCursorAfterCheckingPhase1ButtonState();
  
  textFont(gameStartButtonFont);    
  textAlign(CENTER, CENTER);
  noStroke();
  
  fill(230);
  rect(phase1Button[0], phase1Button[1], 
  phase1Button[2], phase1Button[3], 10);
  
  fill(0, 0, 0);
  text("게임 시작", phase1Button[0] + phase1Button[2]/2, phase1Button[1] + phase1Button[3]/2 - 5);
  
  popStyle();
}

void checkAllPhase1ButtonsInRange()
{
  if(isGameStart)
    return;
  
  if(phase1Button[0] <= mouseX && (phase1Button[0] + phase1Button[2]) >= mouseX
    && phase1Button[1] <= mouseY && (phase1Button[1] + phase1Button[3]) >= mouseY)
  {
    if(mouseButton == LEFT)
    {
      isGameStart = true;
          
      cursor(ARROW);
      return;
    }
  }    
}

void changeCursorAfterCheckingPhase1ButtonState()
{
  if(isGameStart)
  {
    return;
  }
  
  if(phase1Button[0] <= mouseX && (phase1Button[0] + phase1Button[2]) >= mouseX
    && phase1Button[1] <= mouseY && (phase1Button[1] + phase1Button[3]) >= mouseY)
  {
    cursor(HAND);
    return;
  } 
  
  cursor(ARROW);  
}

void moveTitle()
{
   if(!isDrawingTitle)
    return;
    
  titleTextPoint[0] += 3.0;
  
  if(titleTextPoint[0] >= 180.0)
    isDrawingTitle = false;
}

float[] titleTextPoint = new float[2]; // x, y

boolean isDrawingTitle = true;

PFont titleFont;

void setupPhase1()
{
  titleFont = createFont("JSArirang.ttf", 50);
  titleTextPoint[0] = 0.0;
  titleTextPoint[1] = 100.0;
}

void drawPhase1()
{
  pushStyle();
  background(#C4E6F0);
  
  drawMainBackground(); // 백그라운드를 그린다.
  drawSungYeonCharacter(); // 승연 캐릭터를 그린다.
  drawHanbitCharacter(); // 한빛 캐릭터를 그린다.
  drawSubinCharacter(); // 수빈 캐릭터를 그린다.
  drawMainTitle(); // 메인 타이틀을 그린다.

  //button
  fill(0);
  noStroke();
  rect(1000,600,250,100);
  
  popStyle();
}

void drawMainBackground()
{
  drawBackgroundGround();
  drawBackgroundSun();
  drawBackgroundMuseum();
  drawBackgroundRoad();
}

void drawBackgroundGround()
{
  //ground
  fill(#80CB79);
  noStroke();
  arc(560,1800,4700,3000,0,TWO_PI);  
}

void drawBackgroundSun()
{
  //sun
  fill(#F79E0C);
  stroke(#FC9C00);
  strokeWeight(2);
  arc(0,0,250,250,0,HALF_PI);
}

void drawBackgroundMuseum()
{
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
}

void drawBackgroundRoad()
{
 //road
  fill(#A0867B);
  noStroke();
  quad(810,440,710,720,1210,720,1110,440); 
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
}

void drawHanbitCharacter()
{
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
}

void drawMainTitle()
{  
  //title
  pushStyle();
  fill(0);
  textFont(titleFont);
  text("우당탕탕", titleTextPoint[0], titleTextPoint[1]);
  moveTitle();
  popStyle();
}

void moveTitle()
{
   if(!isDrawingTitle)
    return;
    
  titleTextPoint[0] += 3.0;
  
  if(titleTextPoint[0] >= 150.0)
  {
    isDrawingTitle = false;
    println(titleTextPoint[0]);
  }  
}

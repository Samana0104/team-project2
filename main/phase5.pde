final int SMARTPHONE_WIDTH = 60;
final int SMARTPHONE_HEIGHT = 100;

PImage phase5Img;

String phase5Subtitle;

int presentPhase5Subtitle = 0;

float[] smartphonePos = new float[2];

boolean isPlayingPhase5Subtitle = true;
boolean isPhase5Ending = false;

void setupPhase5()
{
  phase5Img = loadImage("phase5.png");
  phase5Img.loadPixels();
  loadPixels();
  
  smartphonePos[0] = random(0,width-SMARTPHONE_HEIGHT);
  smartphonePos[1] = random(0, height-SMARTPHONE_HEIGHT);
  
  phase5Subtitle = "작품을 감상하던 중 갑자기 정전이 되었다.";
}

void drawPhase5()
{
  pushStyle();

  if(isPlayingPhase5Subtitle)
  {
    background(0);
    createSubtitle(phase5Subtitle);
  }
  else
  {
    viewFlashEffect();    
    drawSmartphone();
  }
  
  if(isPhase5Ending)
  {
    if(viewFadingOutEffect()) // fade out 효과를 주고 fade out 효과가 끝나면 다음 페이즈로 넘어감
      phase6 = true;     
  }
  
  popStyle();
}

void drawSmartphone()
{
  pushStyle();
  
  pushStyle();
  noStroke();
  fill(255);
  
  for(int i=0; i<SMARTPHONE_WIDTH; i++)
  {
    for(int j=0; j<SMARTPHONE_HEIGHT; j++)
    {
      
      if(dist(smartphonePos[0]+i, smartphonePos[1]+j, mouseX, mouseY) <= 110)
      {    
        //println(dist(100+i, 100+j, mouseX, mouseY));
        rect(smartphonePos[0]+i, smartphonePos[1]+j, 1, 1);
      }
    }
  }
  
  popStyle();
  
  fill(0);
  strokeWeight(3); 
  line(smartphonePos[0], smartphonePos[1], 
  smartphonePos[0] + SMARTPHONE_WIDTH, smartphonePos[1]); // 윗 줄
  line(smartphonePos[0], smartphonePos[1], smartphonePos[0], 
  smartphonePos[1] + SMARTPHONE_HEIGHT); // 왼쪽 줄
  line(smartphonePos[0], smartphonePos[1] + SMARTPHONE_HEIGHT, 
  smartphonePos[0] + SMARTPHONE_WIDTH, smartphonePos[1] + SMARTPHONE_HEIGHT); // 아랫 줄
  line(smartphonePos[0] + SMARTPHONE_WIDTH, smartphonePos[1], 
  smartphonePos[0] + SMARTPHONE_WIDTH, smartphonePos[1] + SMARTPHONE_HEIGHT); // 오른쪽 줄
  
  popStyle();
}

void viewFlashEffect() // 외부 플래쉬 효과 소스 가져옴
{
  int loc;
  float r,g,b;
  float maxdist = 5;
  float d;
  float adjustbrightness;
  color c;
  
  for (int x = 0; x < phase5Img.width; x++) {
    for (int y = 0; y < phase5Img.height; y++ ) {
      // Calculate the 1D location from a 2D grid
      loc = x + y*phase5Img.width;
      r = red (phase5Img.pixels[loc]); // 해당 픽셀의 RED 컬러를 불러옴
      g = green (phase5Img.pixels[loc]); // 해당 픽셀의 GREEN 컬러를 불러옴
      b = blue (phase5Img.pixels[loc]); // 해당 픽셀의 BLUE 컬러를 불러옴
      d = dist(x, y, mouseX, mouseY); // 반복문이 가리키는 픽셀 하나랑 마우스 현재 좌표까지 거리를 계산함
      adjustbrightness = 10*(maxdist-d)/maxdist; // 마우스에서 멀어진 픽셀일수록 명암을 줘서 어둡게 만들고 가까울수록 밝게 만듬
      r += adjustbrightness; // 해당 픽셀의 RED 색깔에 밝기를 높힘
      g += adjustbrightness; // 해당 픽셀의 GREEN 색깔에 밝기를 높힘
      b += adjustbrightness; // 해당 픽셀의 BLUE 색깔에 밝기를 높힘
      // Constrain RGB to make sure they are within 0-255 color range
      r = constrain(r, 0, 255); 
      g = constrain(g, 0, 255);  
      b = constrain(b, 0, 255);
      // Make a new color and set pixel in the window
      c = color(r, g, b); // 위에서 조정된 밝기로 컬러를 구성함
      pixels[y*width + x] = c; // 반복문이 가리키는 픽셀 좌표에 아까 만든 컬러로 픽셀을 교체함
    }
  }
  updatePixels(); // 픽셀 교체가 끝났으면 교체된 픽셀로 다시 렌더링 처리함
}

void changePhase5Subtitle()
{
  presentPhase5Subtitle += 1;
  
  if(presentPhase5Subtitle == 1)
    phase5Subtitle = "얼른 대피하려던 순간, 승연의 핸드폰이 사라졌다.";
  else if(presentPhase5Subtitle == 2)
    phase5Subtitle = "주어진 손전등을 이용해 승연의 핸드폰을 찾아라!";
  else if(presentPhase5Subtitle == 3)
    isPlayingPhase5Subtitle = false;
}

void checkPhoneInRange()
{
  if(isPlayingPhase5Subtitle)
    return;
    
  if(smartphonePos[0] <= mouseX && (smartphonePos[0] + SMARTPHONE_WIDTH) >= mouseX
    && smartphonePos[1] <= mouseY && (smartphonePos[1] + SMARTPHONE_HEIGHT) >= mouseY)
  {
    if(mouseButton == LEFT)
    {
      isPhase5Ending = true;
      frameRate(60);
      return;
    }
  }    
}

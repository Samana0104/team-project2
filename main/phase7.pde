final int BLOCK_MAX = 13; // max of a part of modrian block on background 
final int BLOCK_RECTANGLE = 4; // posX, posY, width, height
final int BLOCK_COLOR = 4; // r, g, b, alpha

final int COLOR_LIST = 5; // red, yellow, blue, black, white, 
final int COLOR_RED = 0;
final int COLOR_YELLOW = 1;
final int COLOR_BLUE = 2;
final int COLOR_BLACK = 3;
final int COLOR_WHITE = 4;

final int BUTTON_MAX = 2;
final int BUTTON_RECTANGLE = 4;
final int BUTTON_AGAIN = 0;
final int BUTTON_SUBMISSION = 1;

float[][] mondrianBlock = new float[BLOCK_MAX][BLOCK_RECTANGLE];
color[] mondrianBlockColor = new color[BLOCK_MAX];
int[] mondrianBlockColorAlpha = new int[BLOCK_MAX];

color[] colorList = new color[COLOR_LIST];

float[][] phase7Button = new float[BUTTON_MAX][BUTTON_RECTANGLE];

boolean isSubmission = false;

void setupPhase7()
{
  initMondrianBlock();
  initMondrianColorList();
  initAllMondrianBlockColors();
  createButtons();
}

void drawPhase7()
{
  pushStyle();
  
  background(255);
  drawRectangleButton();
  drawMondrianComposition();
  
  popStyle();
}

void drawMondrianComposition()
{
  pushStyle();
  strokeWeight(3);
  
  for(int i=0; i<BLOCK_MAX; i++)
  {
    fill(mondrianBlockColor[i], mondrianBlockColorAlpha[i]);
    rect(mondrianBlock[i][0], mondrianBlock[i][1], mondrianBlock[i][2], mondrianBlock[i][3]);
  }
  
  strokeWeight(0);
  popStyle();
}

void drawRectangleButton()
{
  pushStyle();
  chageCursorAfterCheckingButtonState();
  fill(200, 200, 200);
  rect(phase7Button[BUTTON_AGAIN][0], phase7Button[BUTTON_AGAIN][1], 
  phase7Button[BUTTON_AGAIN][2], phase7Button[BUTTON_AGAIN][3]);
  
  rect(phase7Button[BUTTON_SUBMISSION][0], phase7Button[BUTTON_SUBMISSION][1], 
  phase7Button[BUTTON_SUBMISSION][2], phase7Button[BUTTON_SUBMISSION][3]);
  popStyle();
}


void initMondrianBlock()
{
  mondrianBlock[0][0] = 580;
  mondrianBlock[0][1] = 50;
  mondrianBlock[0][2] = 270;
  mondrianBlock[0][3] = 70;
  
  mondrianBlock[1][0] = 580;
  mondrianBlock[1][1] = 120;
  mondrianBlock[1][2] = 270;
  mondrianBlock[1][3] = 270;
  
  mondrianBlock[2][0] = 580;
  mondrianBlock[2][1] = 390;
  mondrianBlock[2][2] = 110;
  mondrianBlock[2][3] = 270;
  
  mondrianBlock[3][0] = 690;
  mondrianBlock[3][1] = 390;
  mondrianBlock[3][2] = 160;
  mondrianBlock[3][3] = 135;
  
  mondrianBlock[4][0] = 690;
  mondrianBlock[4][1] = 525;
  mondrianBlock[4][2] = 160;
  mondrianBlock[4][3] = 67.5;
  
  mondrianBlock[5][0] = 690;
  mondrianBlock[5][1] = 592.5;
  mondrianBlock[5][2] = 280;
  mondrianBlock[5][3] = 67.5;
  
  mondrianBlock[6][0] = 850;
  mondrianBlock[6][1] = 50;
  mondrianBlock[6][2] = 160;
  mondrianBlock[6][3] = 340;
 
  mondrianBlock[7][0] = 850;
  mondrianBlock[7][1] = 390;
  mondrianBlock[7][2] = 160;
  mondrianBlock[7][3] = 202.5;
  
  mondrianBlock[8][0] = 970;
  mondrianBlock[8][1] = 592.5;
  mondrianBlock[8][2] = 40;
  mondrianBlock[8][3] = 67.5;
  
  mondrianBlock[9][0] = 1010;
  mondrianBlock[9][1] = 50;
  mondrianBlock[9][2] = 160;
  mondrianBlock[9][3] = 100;
  
  mondrianBlock[10][0] = 1010;
  mondrianBlock[10][1] = 150;
  mondrianBlock[10][2] = 160;
  mondrianBlock[10][3] = 180;
  
  mondrianBlock[11][0] = 1010;
  mondrianBlock[11][1] = 330;
  mondrianBlock[11][2] = 160;
  mondrianBlock[11][3] = 60;
  
  mondrianBlock[12][0] = 1010;
  mondrianBlock[12][1] = 390;
  mondrianBlock[12][2] = 160;
  mondrianBlock[12][3] = 270;
}

void initMondrianColorList()
{
  colorList[COLOR_RED] = color(255, 0, 0);
  colorList[COLOR_YELLOW] = color(255, 212, 0);
  colorList[COLOR_BLUE] = color(0, 0, 255);
  colorList[COLOR_BLACK] = color(0, 0, 0);
  colorList[COLOR_WHITE] = color(255, 255, 255);
}

void initAllMondrianBlockColors()
{
  for(int i=0; i<BLOCK_MAX; i++)
  {
    mondrianBlockColorAlpha[i] = 255;
    mondrianBlockColor[i] = colorList[COLOR_WHITE];
  }
}

void createButtons()
{
  phase7Button[BUTTON_AGAIN][0] = 100;
  phase7Button[BUTTON_AGAIN][1] = 400;
  phase7Button[BUTTON_AGAIN][2] = 300;
  phase7Button[BUTTON_AGAIN][3] = 100;
  
  phase7Button[BUTTON_SUBMISSION][0] = 100;
  phase7Button[BUTTON_SUBMISSION][1] = 550;
  phase7Button[BUTTON_SUBMISSION][2] = 300;
  phase7Button[BUTTON_SUBMISSION][3] = 100;  
}

void checkAllBlocksInRange()
{
  for(int i=0; i<BLOCK_MAX; i++)
  {
    if(mondrianBlock[i][0] <= mouseX && (mondrianBlock[i][0] + mondrianBlock[i][2]) >= mouseX
    && mondrianBlock[i][1] <= mouseY && (mondrianBlock[i][1] + mondrianBlock[i][3]) >= mouseY)
    {
      if(mouseButton == LEFT)
        changeMondrianBlockColor(i);
      else if(mouseButton == RIGHT)
        changeMondrianBlockColorAlpha(i);  
    }
  }
}

void checkAllButtonsInRange()
{
  for(int i=0; i<BUTTON_MAX; i++)
  {
    if(phase7Button[i][0] <= mouseX && (phase7Button[i][0] + phase7Button[i][2]) >= mouseX
    && phase7Button[i][1] <= mouseY && (phase7Button[i][1] + phase7Button[i][3]) >= mouseY)
    {
      if(mouseButton == LEFT)
      {
        if(i == BUTTON_AGAIN)
          initAllMondrianBlockColors();
        else if(i == BUTTON_SUBMISSION)
          isSubmission = true;
      }
    }
  }  
}

void chageCursorAfterCheckingButtonState()
{
  for(int i=0; i<BUTTON_MAX; i++)
  {
    if(phase7Button[i][0] <= mouseX && (phase7Button[i][0] + phase7Button[i][2]) >= mouseX
    && phase7Button[i][1] <= mouseY && (phase7Button[i][1] + phase7Button[i][3]) >= mouseY)
    {
      cursor(HAND);
      return;
    }
  }  
  
  cursor(ARROW);
}

void changeMondrianBlockColor(int blockIndex)
{
  if(mondrianBlockColor[blockIndex] == colorList[COLOR_RED])
  {
    mondrianBlockColor[blockIndex] = colorList[COLOR_YELLOW];
  }
  else if(mondrianBlockColor[blockIndex] == colorList[COLOR_YELLOW])
  {
    mondrianBlockColor[blockIndex] = colorList[COLOR_BLUE];
  }
  else if(mondrianBlockColor[blockIndex] == colorList[COLOR_BLUE])
  {
    mondrianBlockColor[blockIndex] = colorList[COLOR_BLACK];
  }
  else if(mondrianBlockColor[blockIndex] == colorList[COLOR_BLACK])
  {
    mondrianBlockColor[blockIndex] = colorList[COLOR_WHITE];
  }
  else if(mondrianBlockColor[blockIndex] == colorList[COLOR_WHITE])
  {
    mondrianBlockColor[blockIndex] = colorList[COLOR_RED];
  }
}

void changeMondrianBlockColorAlpha(int blockIndex)
{
  mondrianBlockColorAlpha[blockIndex] -= 50;
  
  if(mondrianBlockColorAlpha[blockIndex] < 30)
    mondrianBlockColorAlpha[blockIndex] = 255;
}

float[][] mondrianBlock;
float[][] mondrianColor;

final int BLOCK_MAX = 13; // max of a part of modrian block on background 
final int BLOCK_RECTANGLE = 4; // posX, posY, width, height
final int BLOCK_COLOR = 4; // r, g, b, alpha

void setupPhase7()
{
  mondrianBlock = new float[BLOCK_MAX][BLOCK_RECTANGLE];
  initMondrianBlock();
}

void drawPhase7()
{
  background(255);
  drawMondrianComposition();
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

void drawMondrianComposition()
{
  strokeWeight(3);
  
  for(int i=0; i<BLOCK_MAX; i++)
    rect(mondrianBlock[i][0], mondrianBlock[i][1], mondrianBlock[i][2], mondrianBlock[i][3]);
    
  strokeWeight(0);
}

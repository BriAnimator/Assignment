float playerX;
float playerY;
float playerHeight = 25;
float playerWidth = 50;
float halfWidth = playerWidth * 0.5f;
float halfHeight = playerHeight * 0.5f;

int score;

float[]invaderX=new float [700];
float[]invaderY=new float [700];
int i=0;

Ship ship;
Shields shields;
Invaders invaders;


void setup()
{
  ship = new Ship();
  shields = new Shields();
  invaders = new Invaders();
  
  size(500,600);
  playerX = width / 2;
  playerY = height - playerHeight;
  
  for (int y = -55; y <= 150; y += 40)
    {
      for (int x = 25; x <= width - 50; x += 50)
      {
        invaderX[i]=x;
        invaderY[i]=y;
        i++;
      }
    }
  
}

boolean[] keys = new boolean[512];

void keyPressed()
{
  keys[keyCode] = true;
}

void keyReleased()
{
  keys[keyCode] = false;
}




void draw()
{
  background(0);
  stroke(255);
  
  text("Score: " + score, 10, 20);
  textSize(13);
  
  
  
  ship.update();
  ship.render();
  
  shields.render();
  
  invaders.render();
  drawInvaders();
  
  //float halfWidth = playerWidth * 0.5f;
  //float halfHeight = playerHeight * 0.5f;
  
  //line (playerX - halfWidth, playerY + halfHeight
  //  , playerX + halfWidth, playerY + halfHeight);
  //line (playerX - halfWidth, playerY + halfHeight
  //    , playerX - halfWidth, playerY);
  //line(playerX - halfWidth, playerY
  //    , playerX - (playerWidth * 0.25f), playerY - halfHeight);
  //line(playerX - (playerWidth * 0.25f), playerY - halfHeight
  //    , playerX + (playerWidth * 0.25f), playerY - halfHeight);
  //line(playerX + (playerWidth * 0.25f), playerY - halfHeight
  //    , playerX + halfWidth, playerY);
  //line(playerX + halfWidth, playerY
  //  , playerX + halfWidth, playerY + halfHeight);
  
  
  //if (keyPressed)
  // {
  //   if (keyCode == LEFT && playerX > halfWidth)
  //   {
  //     playerX --;
  //   }
  //   if (keyCode == RIGHT && playerX < width - halfWidth)
  //   {
  //     playerX ++; 
  //   }
  // }
     
}

void drawInvaders() {

  for (int i = 5 ; i < 700; i++) 
  {
    rect(invaderX[i], invaderY[i], 40, 10);
   }
}

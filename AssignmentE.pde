float playerX;
float playerY;
float playerHeight = 25;
float playerWidth = 50;



void setup()
{
  size(500,500);
  playerX = width / 2;
  playerY = height - playerHeight;
}

void draw()
{
  background(0);
  stroke(255);
  
  float halfWidth = playerWidth * 0.5f;
  float halfHeight = playerHeight * 0.5f;
  
  line (playerX - halfWidth, playerY + halfHeight
    , playerX + halfWidth, playerY + halfHeight);
  line (playerX - halfWidth, playerY + halfHeight
      , playerX - halfWidth, playerY);
  line(playerX - halfWidth, playerY
      , playerX - (playerWidth * 0.25f), playerY - halfHeight);
  line(playerX - (playerWidth * 0.25f), playerY - halfHeight
      , playerX + (playerWidth * 0.25f), playerY - halfHeight);
  line(playerX + (playerWidth * 0.25f), playerY - halfHeight
      , playerX + halfWidth, playerY);
  line(playerX + halfWidth, playerY
    , playerX + halfWidth, playerY + halfHeight);
  
}
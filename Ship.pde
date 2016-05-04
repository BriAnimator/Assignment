
class Ship
{    
   
  Ship()
  {
    
  }
  
  void update()
  {
    
    
    if (keyPressed)
    {
      if (keyCode == LEFT && playerX > halfWidth)
      {
        playerX --;
      }
      
      if (keyCode == RIGHT && playerX < width - halfWidth)
      {
        playerX ++; 
      }
      
      if (key == ' ')
      {
          ellipse(250,bulletY,5,5);
          bulletY -= 20;
//       float bulletY = playerY - 40;
//       line(playerX, playerY-15,playerX,bulletY); 
      }
     
    }
    
    
  }
  
  void render()
  {
    stroke(255);
    
    //Bottom Line
    line (playerX - halfWidth, playerY + halfHeight
     , playerX + halfWidth, playerY + halfHeight);
     
     //Left Side
    line (playerX - halfWidth, playerY + halfHeight
      , playerX - halfWidth, playerY);
      
      //Left Slant
    line(playerX - halfWidth, playerY
      , playerX - (playerWidth * 0.25f), playerY - halfHeight);
       
     //Top line  
    line(playerX - (playerWidth * 0.25f), playerY - halfHeight
      , playerX + (playerWidth * 0.25f), playerY - halfHeight);
       
     //Right Slant 
    line(playerX + (playerWidth * 0.25f), playerY - halfHeight
      , playerX + halfWidth, playerY);
     
     //Right Side
    line(playerX + halfWidth, playerY
     , playerX + halfWidth, playerY + halfHeight);
  }
  
  
}
  

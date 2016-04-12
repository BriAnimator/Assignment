class Shields
{
  Shields()
  {
    
  }
  
  void render()
  {
    
    for (int x = 25; x < 475; x += 100)
    {
      rect(x,height - 150,50 ,50);
    }
    
    // rect(playerX / 2 - (width/5), height - 150, 50, 50);
  }
}
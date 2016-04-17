class Shields
{
  Shields()
  {
    
  }
  
  void render()
  {
    //Change to make big cubes into smaller cubes so they can be destroyed??
   
    for (int x = 25; x < 475; x += 100)
    {
      fill(255);
      rect(x, height - 150, 50, 50);
    }
    
    
    
  }
}

class Walls
{
  float outerRad;
  float innerRad;
  float coreRad;
  Walls()
  {
    outerRad=width/3;
    innerRad= outerRad-20;
    coreRad=width/6;
  }
  
  void display()
  {
     ellipse(centx,centy,outerRad,outerRad);
     ellipse(centx,centy,innerRad,innerRad);
     ellipse(centx,centy,coreRad,coreRad);
  }
  
}
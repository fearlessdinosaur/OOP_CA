
class Walls
{
  float outerRad;
  float innerRad;
  float coreRad;
  color colour;
  Walls()
  {
    outerRad=width/3;
    innerRad= outerRad-20;
    coreRad=width/6;
    colour=color(100,200,255);
  }
  
  void display()
  {  
     stroke(colour);
     strokeWeight(2);
     fill(0);
     ellipse(centx,centy,outerRad,outerRad);
     ellipse(centx,centy,innerRad,innerRad);
     ellipse(centx,centy,coreRad,coreRad);
  }
  
}
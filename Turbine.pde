class Turbine
{
  float x;
  float y;
  float theta;
  float rad;
  Turbine(float theta,float rad)
  {
      x=centx+(rad-5)*cos(radians(theta));
      y=centy+(rad-5)*sin(radians(theta));
      ellipse(x,y,50,50);
      
  }
  
}